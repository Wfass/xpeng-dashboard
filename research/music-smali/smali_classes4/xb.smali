.class public Lxb;
.super Lxa;
.source "ObjectReaderCreatorASM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxb$b;,
        Lxb$a;
    }
.end annotation


# static fields
.field public static final f:Lxb;

.field protected static final g:Ljava/util/concurrent/atomic/AtomicLong;

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

.field static final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lxb$a;",
            ">;"
        }
    .end annotation
.end field

.field static final x:[Ljava/lang/String;


# instance fields
.field protected final h:Laba;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 37
    new-instance v0, Lxb;

    invoke-static {}, Laba;->b()Laba;

    move-result-object v1

    invoke-direct {v0, v1}, Lxb;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v0, Lxb;->f:Lxb;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lxb;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lrv;->R:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->i:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lrv;->R:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->j:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Ljava/lang/Class;Ljava/util/function/Supplier;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lrv;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")V"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->k:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;J"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lrv;->T:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Ljava/util/function/Supplier;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Ljava/util/function/Function;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lrv;->O:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->l:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->m:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(J)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lrv;->N:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->n:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ljava/lang/Object;)V"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->o:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Ljava/lang/Object;Ljava/lang/String;)V"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->p:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Ljava/util/List;ILjava/lang/String;)V"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->q:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->R:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->r:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->s:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "J)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->R:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->t:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Ljava/lang/Object;I)V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxb;->u:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lxb;->w:Ljava/util/Map;

    .line 64
    const-class v0, Lxb;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sput-object v0, Lxb;->v:Ljava/lang/String;

    .line 67
    sget-object v0, Lxb;->w:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v10, Lxb$a;

    const-class v2, Lqz;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x15

    const/16 v9, 0x36

    const-string v4, "(Ljava/lang/Object;Z)V"

    const-string v5, "(Z)V"

    const-string v7, "readFieldBoolValue"

    const-string v8, "()Z"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lxb;->w:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v10, Lxb$a;

    const-class v2, Lrb;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Ljava/lang/Object;C)V"

    const-string v5, "(C)V"

    const-string v7, "readInt32Value"

    const-string v8, "()C"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lxb;->w:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v10, Lxb$a;

    const-class v2, Lra;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Ljava/lang/Object;B)V"

    const-string v5, "(B)V"

    const-string v7, "readInt32Value"

    const-string v8, "()B"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lxb;->w:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v10, Lxb$a;

    const-class v2, Lrd;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Ljava/lang/Object;S)V"

    const-string v5, "(S)V"

    const-string v7, "readInt32Value"

    const-string v8, "()S"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lxb;->w:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v10, Lxb$a;

    const-class v2, Ljava/util/function/ObjIntConsumer;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Ljava/lang/Object;I)V"

    const-string v5, "(I)V"

    const-string v7, "readInt32Value"

    const-string v8, "()I"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lxb;->w:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v10, Lxb$a;

    const-class v2, Ljava/util/function/ObjLongConsumer;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x16

    const/16 v9, 0x37

    const-string v4, "(Ljava/lang/Object;J)V"

    const-string v5, "(J)V"

    const-string v7, "readInt64Value"

    const-string v8, "()V"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lxb;->w:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v10, Lxb$a;

    const-class v2, Lrc;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x17

    const/16 v9, 0x38

    const-string v4, "(Ljava/lang/Object;F)V"

    const-string v5, "(F)V"

    const-string v7, "readFieldFloatValue"

    const-string v8, "()F"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lxb;->w:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v10, Lxb$a;

    const-class v2, Ljava/util/function/ObjDoubleConsumer;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/16 v9, 0x39

    const-string v4, "(Ljava/lang/Object;D)V"

    const-string v5, "(D)V"

    const-string v7, "readFloatDoubleValue"

    const-string v8, "()D"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lxb;->w:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v10, Lxb$a;

    const-class v2, Ljava/util/function/BiConsumer;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x19

    const/16 v9, 0x3a

    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    const-string v5, "(Ljava/lang/String;)V"

    const-string v7, "readString"

    const-string v8, "()Ljava/lang/String;"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lxb;->w:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v10, Lxb$a;

    const-class v2, Ljava/util/function/BiConsumer;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Ljava/lang/Object;Ljava/lang/Integer;)V"

    const-string v5, "(Ljava/lang/Integer;)V"

    const-string v7, "readInt32"

    const-string v8, "()Ljava/lang/Integer;"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lxb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x400

    .line 80
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lxb;->x:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Lxa;-><init>()V

    .line 203
    instance-of v0, p1, Laba;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Laba;

    goto :goto_0

    .line 205
    :cond_0
    new-instance v0, Laba;

    invoke-direct {v0, p1}, Laba;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lxb;->h:Laba;

    return-void
.end method

.method private a(Lsu;Ljava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Integer;)I
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsu;",
            "Ljava/lang/String;",
            "Lse;",
            "IIIII",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;IIIZZ",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "J",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    move-object/from16 v1, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v2, p16

    move-object/from16 v14, p21

    if-nez p20, :cond_0

    .line 3521
    const-class v3, Ljava/lang/Object;

    move-object v15, v3

    goto :goto_0

    :cond_0
    move-object/from16 v15, p20

    .line 3524
    :goto_0
    invoke-static {v15}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 3525
    invoke-static/range {p12 .. p12}, Lxb;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 3527
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 3529
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, p8, 0x1

    goto :goto_1

    :cond_1
    move/from16 v4, p8

    :goto_1
    move-object/from16 v16, v3

    .line 3532
    const-class v3, Lwk;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_2

    .line 3534
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 3538
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    const-string v2, "java/util/ArrayList"

    if-eqz v1, :cond_3

    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v4, v14

    .line 3540
    :goto_2
    new-instance v3, Lsc;

    invoke-direct {v3}, Lsc;-><init>()V

    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    move-object/from16 p15, v6

    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    move-object/from16 p8, v1

    .line 3542
    sget v1, Labf;->d:I

    move-object/from16 p9, v3

    const/16 v3, 0x8

    move-object/from16 p16, v6

    if-ne v1, v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v19, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    move/from16 v19, v1

    :goto_3
    const/16 v2, 0x19

    if-eqz p13, :cond_7

    .line 3545
    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    .line 3547
    invoke-virtual {v8, v2, v9}, Lse;->b(II)V

    .line 3548
    invoke-static/range {p12 .. p12}, Lru;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lrv;->N:Ljava/lang/String;

    move-object/from16 p15, v6

    const/16 v6, 0xb4

    invoke-virtual {v8, v6, v7, v1, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    invoke-virtual {v8, v2, v10}, Lse;->b(II)V

    const/16 v3, 0xb6

    .line 3550
    sget-object v24, Lrv;->o:Ljava/lang/String;

    sget-object v25, Lxb;->r:Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "checkObjectAutoType"

    move-object/from16 v28, p8

    move-object/from16 v1, p3

    move v2, v3

    move-object/from16 v29, p9

    move-object/from16 v3, v24

    move-object/from16 v30, v4

    move-object/from16 v4, v27

    move-object/from16 v31, v5

    move-object/from16 v5, v25

    move-object/from16 v7, p15

    move-object/from16 v11, p16

    const/4 v9, 0x1

    move/from16 v6, v26

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x59

    .line 3551
    invoke-virtual {v8, v6}, Lse;->a(I)V

    .line 3552
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x3a

    invoke-virtual {v8, v5, v1}, Lse;->b(II)V

    const/16 v1, 0xc6

    .line 3553
    invoke-virtual {v8, v1, v7}, Lse;->a(ILsc;)V

    .line 3555
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x19

    invoke-virtual {v8, v4, v1}, Lse;->b(II)V

    .line 3556
    invoke-virtual {v8, v4, v10}, Lse;->b(II)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v9, v4

    move/from16 v4, p4

    move v9, v5

    move/from16 v5, p12

    move-object/from16 v6, p17

    .line 3557
    invoke-direct/range {v1 .. v6}, Lxb;->a(Ljava/lang/String;Lse;IILjava/lang/reflect/Type;)V

    .line 3558
    iget-object v1, v0, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lse;->a(Ljava/lang/String;)V

    move-wide/from16 v1, p18

    .line 3559
    invoke-virtual {v8, v1, v2}, Lse;->a(J)V

    const/16 v2, 0xb9

    .line 3560
    sget-object v3, Lrv;->q:Ljava/lang/String;

    sget-object v5, Lxb;->m:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v4, "readJSONBObject"

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0xc0

    .line 3561
    invoke-virtual {v8, v6, v14}, Lse;->a(ILjava/lang/String;)V

    .line 3562
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v9, v1}, Lse;->b(II)V

    move-object/from16 v5, v29

    const/16 v4, 0xa7

    .line 3563
    invoke-virtual {v8, v4, v5}, Lse;->a(ILsc;)V

    .line 3565
    invoke-virtual {v8, v7}, Lse;->a(Lsc;)V

    const/16 v1, 0x19

    .line 3567
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3568
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v21, "startArray"

    const-string v22, "()I"

    move-object/from16 v1, p3

    move-object/from16 v4, v21

    move-object/from16 v32, v5

    move-object/from16 v5, v22

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x59

    .line 3569
    invoke-virtual {v8, v7}, Lse;->a(I)V

    const/16 v6, 0x36

    .line 3570
    invoke-virtual {v8, v6, v12}, Lse;->b(II)V

    const/4 v1, -0x1

    .line 3571
    invoke-virtual {v8, v1}, Lse;->b(I)V

    const/16 v1, 0xa0

    move-object/from16 v2, v28

    .line 3572
    invoke-virtual {v8, v1, v2}, Lse;->a(ILsc;)V

    const/4 v1, 0x1

    .line 3574
    invoke-virtual {v8, v1}, Lse;->a(I)V

    .line 3575
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v9, v1}, Lse;->b(II)V

    move-object/from16 v5, v32

    const/16 v4, 0xa7

    .line 3576
    invoke-virtual {v8, v4, v5}, Lse;->a(ILsc;)V

    .line 3578
    invoke-virtual {v8, v2}, Lse;->a(Lsc;)V

    .line 3580
    iget-object v1, v0, Lsu;->g:Ljava/lang/reflect/Method;

    if-nez v1, :cond_5

    iget-object v1, v0, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_5

    .line 3581
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    iget-object v2, v0, Lsu;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    const/16 v3, 0xb2

    .line 3582
    sget-object v4, Lrv;->a:Ljava/lang/String;

    const-string v6, "UNSAFE"

    const-string v9, "Lsun/misc/Unsafe;"

    invoke-virtual {v8, v3, v4, v6, v9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, p6

    const/16 v4, 0x19

    .line 3583
    invoke-virtual {v8, v4, v3}, Lse;->b(II)V

    .line 3584
    invoke-virtual {v8, v1, v2}, Lse;->a(J)V

    const/16 v2, 0xb6

    const/4 v6, 0x0

    const-string v3, "sun/misc/Unsafe"

    const-string v4, "getObject"

    const-string v9, "(Ljava/lang/Object;J)Ljava/lang/Object;"

    move-object/from16 v1, p3

    move-object/from16 v33, v5

    move-object v5, v9

    const/16 v9, 0x36

    .line 3585
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3586
    invoke-virtual {v8, v7}, Lse;->a(I)V

    const/16 v1, 0xc0

    .line 3587
    invoke-virtual {v8, v1, v14}, Lse;->a(ILjava/lang/String;)V

    .line 3588
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    const/16 v1, 0xc7

    .line 3589
    invoke-virtual {v8, v1, v11}, Lse;->a(ILsc;)V

    goto :goto_4

    :cond_5
    move-object/from16 v33, v5

    move v9, v6

    :goto_4
    move-object/from16 v14, v30

    const/16 v1, 0xbb

    .line 3592
    invoke-virtual {v8, v1, v14}, Lse;->a(ILjava/lang/String;)V

    .line 3593
    invoke-virtual {v8, v7}, Lse;->a(I)V

    if-eqz v19, :cond_6

    const/16 v1, 0x15

    .line 3595
    invoke-virtual {v8, v1, v12}, Lse;->b(II)V

    const/16 v2, 0xb7

    const/4 v6, 0x0

    const-string v4, "<init>"

    const-string v5, "(I)V"

    move-object/from16 v1, p3

    move-object v3, v14

    .line 3596
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_6
    const/16 v2, 0xb7

    const/4 v6, 0x0

    const-string v4, "<init>"

    const-string v5, "()V"

    move-object/from16 v1, p3

    move-object v3, v14

    .line 3598
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3600
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    .line 3601
    invoke-virtual {v8, v11}, Lse;->a(Lsc;)V

    move-object/from16 v12, v33

    const/16 v7, 0xa7

    const/16 v23, 0x9a

    goto/16 :goto_c

    :cond_7
    move-object/from16 v33, p9

    move-object v14, v4

    move-object/from16 v31, v5

    const/16 v7, 0x59

    const/16 v9, 0x36

    .line 3603
    new-instance v11, Lsc;

    invoke-direct {v11}, Lsc;-><init>()V

    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    const/16 v1, 0x19

    .line 3605
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3606
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/16 v21, 0x0

    const-string v4, "nextIfNull"

    const-string v22, "()Z"

    move-object/from16 v1, p3

    move-object v9, v5

    move-object/from16 v5, v22

    move-object/from16 v7, p15

    move-object v0, v6

    move/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x9a

    .line 3607
    invoke-virtual {v8, v6, v9}, Lse;->a(ILsc;)V

    const/16 v1, 0x19

    .line 3609
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    .line 3610
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const-string v4, "nextIfArrayStart"

    const-string v5, "()Z"

    move-object/from16 v1, p3

    move v12, v6

    move/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3611
    invoke-virtual {v8, v12, v11}, Lse;->a(ILsc;)V

    .line 3613
    const-class v1, Ljava/lang/String;

    const/16 v6, 0xa

    if-ne v7, v1, :cond_a

    const/16 v1, 0x19

    .line 3614
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3615
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/16 v21, 0x0

    const-string v4, "isString"

    const-string v5, "()Z"

    move-object/from16 v1, p3

    move v12, v6

    move/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x99

    .line 3616
    invoke-virtual {v8, v6, v0}, Lse;->a(ILsc;)V

    const/16 v1, 0xbb

    .line 3618
    invoke-virtual {v8, v1, v14}, Lse;->a(ILjava/lang/String;)V

    const/16 v1, 0x59

    .line 3619
    invoke-virtual {v8, v1}, Lse;->a(I)V

    if-eqz v19, :cond_8

    .line 3621
    invoke-virtual {v8, v12}, Lse;->b(I)V

    const/16 v2, 0xb7

    const/16 v21, 0x0

    const-string v4, "<init>"

    const-string v5, "(I)V"

    move-object/from16 v1, p3

    move-object v3, v14

    move/from16 v6, v21

    .line 3622
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_8
    const/16 v2, 0xb7

    const/4 v6, 0x0

    const-string v4, "<init>"

    const-string v5, "()V"

    move-object/from16 v1, p3

    move-object v3, v14

    .line 3624
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3626
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    const/16 v1, 0x19

    .line 3628
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3629
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "nextIfNullOrEmptyString"

    const-string v5, "()Z"

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v6, v33

    const/16 v1, 0x9a

    .line 3630
    invoke-virtual {v8, v1, v6}, Lse;->a(ILsc;)V

    .line 3632
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    .line 3633
    invoke-virtual {v8, v2, v10}, Lse;->b(II)V

    .line 3634
    const-class v1, Ljava/lang/String;

    if-ne v7, v1, :cond_9

    const/16 v2, 0xb6

    .line 3635
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v4, "readString"

    const-string v5, "()Ljava/lang/String;"

    move-object/from16 v1, p3

    move-object v12, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    :cond_9
    move-object v12, v6

    :goto_7
    const/16 v2, 0xb9

    const/4 v6, 0x1

    const-string v3, "java/util/List"

    const-string v4, "add"

    const-string v5, "(Ljava/lang/Object;)Z"

    move-object/from16 v1, p3

    .line 3637
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x57

    .line 3638
    invoke-virtual {v8, v7}, Lse;->a(I)V

    const/16 v6, 0xa7

    .line 3640
    invoke-virtual {v8, v6, v12}, Lse;->a(ILsc;)V

    goto/16 :goto_9

    :cond_a
    move-object/from16 v12, v33

    const/16 v6, 0xa7

    const/16 v7, 0x57

    .line 3641
    instance-of v1, v15, Ljava/lang/Class;

    if-eqz v1, :cond_c

    const/16 v1, 0x19

    .line 3642
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3643
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v4, "nextIfNullOrEmptyString"

    const-string v5, "()Z"

    move-object/from16 v1, p3

    move v7, v6

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x9a

    .line 3644
    invoke-virtual {v8, v6, v9}, Lse;->a(ILsc;)V

    const/16 v1, 0xbb

    .line 3647
    invoke-virtual {v8, v1, v14}, Lse;->a(ILjava/lang/String;)V

    const/16 v1, 0x59

    .line 3648
    invoke-virtual {v8, v1}, Lse;->a(I)V

    if-eqz v19, :cond_b

    const/16 v1, 0xa

    .line 3650
    invoke-virtual {v8, v1}, Lse;->b(I)V

    const/16 v2, 0xb7

    const/16 v22, 0x0

    const-string v4, "<init>"

    const-string v5, "(I)V"

    move-object/from16 v1, p3

    move-object v3, v14

    move/from16 v23, v6

    move/from16 v6, v22

    .line 3651
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    :cond_b
    move/from16 v23, v6

    const/16 v2, 0xb7

    const/4 v6, 0x0

    const-string v4, "<init>"

    const-string v5, "()V"

    move-object/from16 v1, p3

    move-object v3, v14

    .line 3653
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3655
    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    const/16 v1, 0x19

    .line 3657
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    .line 3658
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Lse;->b(II)V

    .line 3659
    move-object v1, v15

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v8, v1}, Lse;->a(Ljava/lang/Class;)V

    const/16 v2, 0xb6

    .line 3660
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "readArray"

    const-string v5, "(Ljava/util/List;Ljava/lang/reflect/Type;)V"

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3662
    invoke-virtual {v8, v7, v12}, Lse;->a(ILsc;)V

    goto :goto_a

    :cond_c
    :goto_9
    move v7, v6

    const/16 v23, 0x9a

    .line 3665
    :goto_a
    invoke-virtual {v8, v0}, Lse;->a(Lsc;)V

    const/16 v0, 0x19

    .line 3666
    invoke-virtual {v8, v0, v10}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3667
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "skipValue"

    const-string v5, "()V"

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3669
    invoke-virtual {v8, v9}, Lse;->a(Lsc;)V

    const/4 v0, 0x1

    .line 3670
    invoke-virtual {v8, v0}, Lse;->a(I)V

    .line 3671
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v8, v1, v0}, Lse;->b(II)V

    .line 3672
    invoke-virtual {v8, v7, v12}, Lse;->a(ILsc;)V

    .line 3674
    invoke-virtual {v8, v11}, Lse;->a(Lsc;)V

    const/16 v0, 0xbb

    .line 3675
    invoke-virtual {v8, v0, v14}, Lse;->a(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 3676
    invoke-virtual {v8, v0}, Lse;->a(I)V

    if-eqz v19, :cond_d

    const/16 v0, 0xa

    .line 3678
    invoke-virtual {v8, v0}, Lse;->b(I)V

    const/16 v2, 0xb7

    const/4 v6, 0x0

    const-string v4, "<init>"

    const-string v5, "(I)V"

    move-object/from16 v1, p3

    move-object v3, v14

    .line 3679
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_d
    const/16 v2, 0xb7

    const/4 v6, 0x0

    const-string v4, "<init>"

    const-string v5, "()V"

    move-object/from16 v1, p3

    move-object v3, v14

    .line 3681
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3683
    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {v8, v1, v0}, Lse;->b(II)V

    .line 3686
    :goto_c
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    new-instance v11, Lsc;

    invoke-direct {v11}, Lsc;-><init>()V

    const/4 v1, 0x3

    .line 3687
    invoke-virtual {v8, v1}, Lse;->a(I)V

    const/16 v1, 0x36

    .line 3688
    invoke-virtual {v8, v1, v13}, Lse;->b(II)V

    .line 3690
    invoke-virtual {v8, v0}, Lse;->a(Lsc;)V

    if-eqz p13, :cond_e

    const/16 v14, 0x15

    .line 3694
    invoke-virtual {v8, v14, v13}, Lse;->b(II)V

    move/from16 v1, p10

    move/from16 v6, v23

    .line 3695
    invoke-virtual {v8, v14, v1}, Lse;->b(II)V

    const/16 v1, 0xa2

    .line 3696
    invoke-virtual {v8, v1, v9}, Lse;->a(ILsc;)V

    move v14, v6

    goto :goto_d

    :cond_e
    move/from16 v6, v23

    const/16 v1, 0x19

    const/16 v14, 0x15

    .line 3698
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3699
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/16 v19, 0x0

    const-string v4, "nextIfArrayEnd"

    const-string v5, "()Z"

    move-object/from16 v1, p3

    move v14, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3700
    invoke-virtual {v8, v14, v9}, Lse;->a(ILsc;)V

    .line 3703
    :goto_d
    const-class v1, Ljava/lang/String;

    if-ne v15, v1, :cond_f

    .line 3704
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    .line 3705
    invoke-virtual {v8, v2, v10}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 3706
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "readString"

    const-string v5, "()Ljava/lang/String;"

    move-object/from16 p14, p3

    move/from16 p15, v1

    move-object/from16 p16, v2

    move-object/from16 p17, v4

    move-object/from16 p18, v5

    move/from16 p19, v3

    invoke-virtual/range {p14 .. p19}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_e
    move-object/from16 p8, v0

    move-object/from16 p6, v9

    move-object/from16 v29, v12

    goto/16 :goto_12

    .line 3707
    :cond_f
    const-class v1, Ljava/lang/Integer;

    if-ne v15, v1, :cond_10

    .line 3708
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    .line 3709
    invoke-virtual {v8, v2, v10}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 3710
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "readInt32"

    const-string v5, "()Ljava/lang/Integer;"

    move-object/from16 p14, p3

    move/from16 p15, v1

    move-object/from16 p16, v2

    move-object/from16 p17, v4

    move-object/from16 p18, v5

    move/from16 p19, v3

    invoke-virtual/range {p14 .. p19}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    .line 3711
    :cond_10
    const-class v1, Ljava/lang/Long;

    if-ne v15, v1, :cond_11

    .line 3712
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    .line 3713
    invoke-virtual {v8, v2, v10}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 3714
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "readInt64"

    const-string v5, "()Ljava/lang/Long;"

    move-object/from16 p14, p3

    move/from16 p15, v1

    move-object/from16 p16, v2

    move-object/from16 p17, v4

    move-object/from16 p18, v5

    move/from16 p19, v3

    invoke-virtual/range {p14 .. p19}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    .line 3716
    :cond_11
    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    move/from16 v6, p4

    const/16 v1, 0x19

    const/16 v5, 0x15

    .line 3718
    invoke-virtual {v8, v1, v6}, Lse;->b(II)V

    .line 3719
    sget-object v2, Lrv;->R:Ljava/lang/String;

    move-object/from16 v4, p2

    move-object/from16 v3, v31

    const/16 v7, 0xb4

    invoke-virtual {v8, v7, v4, v3, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc7

    .line 3720
    invoke-virtual {v8, v2, v15}, Lse;->a(ILsc;)V

    .line 3722
    invoke-virtual {v8, v1, v6}, Lse;->b(II)V

    .line 3723
    invoke-virtual {v8, v1, v6}, Lse;->b(II)V

    .line 3724
    invoke-static/range {p12 .. p12}, Lru;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lrv;->N:Ljava/lang/String;

    invoke-virtual {v8, v7, v4, v2, v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3726
    sget-object v5, Lrv;->o:Ljava/lang/String;

    sget-object v19, Lxb;->i:Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "getItemObjectReader"

    move-object/from16 v1, p3

    move-object v7, v3

    move-object v3, v5

    move-object v5, v4

    move-object/from16 v4, v21

    move-object v14, v5

    move-object/from16 v5, v19

    move-object/from16 v29, v12

    move v12, v6

    move/from16 v6, v20

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb5

    .line 3728
    sget-object v2, Lrv;->R:Ljava/lang/String;

    invoke-virtual {v8, v1, v14, v7, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3730
    invoke-virtual {v8, v15}, Lse;->a(Lsc;)V

    const/16 v1, 0x19

    .line 3732
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    .line 3733
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Lse;->b(II)V

    const/16 v1, 0x15

    .line 3734
    invoke-virtual {v8, v1, v13}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3735
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "readReference"

    const-string v5, "(Ljava/util/List;I)Z"

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x9a

    .line 3736
    invoke-virtual {v8, v1, v11}, Lse;->a(ILsc;)V

    .line 3738
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v8, v2, v1}, Lse;->b(II)V

    .line 3740
    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    if-eqz p14, :cond_13

    .line 3742
    invoke-virtual {v8, v2, v10}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 3743
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/16 v19, 0x0

    const-string v4, "isArray"

    const-string v5, "()Z"

    move-object/from16 v1, p3

    move-object/from16 p6, v9

    move-object v9, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x99

    .line 3744
    invoke-virtual {v8, v1, v15}, Lse;->a(ILsc;)V

    const/16 v1, 0x19

    .line 3746
    invoke-virtual {v8, v1, v12}, Lse;->b(II)V

    .line 3747
    sget-object v2, Lrv;->R:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-virtual {v8, v3, v14, v7, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3749
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p12

    move-object/from16 v6, p17

    .line 3750
    invoke-direct/range {v1 .. v6}, Lxb;->a(Ljava/lang/String;Lse;IILjava/lang/reflect/Type;)V

    move-object/from16 v6, p1

    .line 3751
    iget-object v1, v6, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lse;->a(Ljava/lang/String;)V

    const/16 v1, 0x16

    move/from16 v5, p7

    .line 3752
    invoke-virtual {v8, v1, v5}, Lse;->b(II)V

    const/16 v2, 0xb9

    .line 3753
    sget-object v3, Lrv;->q:Ljava/lang/String;

    if-eqz p13, :cond_12

    const-string v1, "readArrayMappingJSONBObject"

    goto :goto_f

    :cond_12
    const-string v1, "readArrayMappingObject"

    :goto_f
    move-object v4, v1

    .line 3755
    sget-object v19, Lxb;->m:Ljava/lang/String;

    const/16 v20, 0x1

    move-object/from16 v1, p3

    move-object/from16 v5, v19

    move-object/from16 p8, v0

    move-object v0, v6

    move/from16 v6, v20

    .line 3753
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xa7

    .line 3759
    invoke-virtual {v8, v1, v9}, Lse;->a(ILsc;)V

    .line 3761
    invoke-virtual {v8, v15}, Lse;->a(Lsc;)V

    const/16 v1, 0x19

    goto :goto_10

    :cond_13
    move-object/from16 p8, v0

    move-object/from16 p6, v9

    move-object/from16 v0, p1

    move-object v9, v6

    move v1, v2

    .line 3764
    :goto_10
    invoke-virtual {v8, v1, v12}, Lse;->b(II)V

    .line 3765
    sget-object v2, Lrv;->R:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-virtual {v8, v3, v14, v7, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3767
    invoke-virtual {v8, v1, v10}, Lse;->b(II)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p12

    move-object/from16 v6, p17

    .line 3768
    invoke-direct/range {v1 .. v6}, Lxb;->a(Ljava/lang/String;Lse;IILjava/lang/reflect/Type;)V

    .line 3769
    iget-object v0, v0, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lse;->a(Ljava/lang/String;)V

    const/16 v0, 0x16

    move/from16 v1, p7

    .line 3770
    invoke-virtual {v8, v0, v1}, Lse;->b(II)V

    const/16 v0, 0xb9

    .line 3771
    sget-object v1, Lrv;->q:Ljava/lang/String;

    if-eqz p13, :cond_14

    const-string v2, "readJSONBObject"

    goto :goto_11

    :cond_14
    const-string v2, "readObject"

    .line 3773
    :goto_11
    sget-object v3, Lxb;->m:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 p15, p3

    move/from16 p16, v0

    move-object/from16 p17, v1

    move-object/from16 p18, v2

    move-object/from16 p19, v3

    move/from16 p20, v4

    .line 3771
    invoke-virtual/range {p15 .. p20}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p14, :cond_15

    .line 3778
    invoke-virtual {v8, v9}, Lse;->a(Lsc;)V

    :cond_15
    :goto_12
    const/16 v0, 0xb9

    const/4 v1, 0x1

    const-string v2, "java/util/List"

    const-string v3, "add"

    const-string v4, "(Ljava/lang/Object;)Z"

    move-object/from16 p14, p3

    move/from16 p15, v0

    move-object/from16 p16, v2

    move-object/from16 p17, v3

    move-object/from16 p18, v4

    move/from16 p19, v1

    .line 3781
    invoke-virtual/range {p14 .. p19}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x57

    .line 3782
    invoke-virtual {v8, v0}, Lse;->a(I)V

    if-nez p13, :cond_16

    const/16 v0, 0x19

    .line 3785
    invoke-virtual {v8, v0, v10}, Lse;->b(II)V

    const/16 v0, 0xb6

    .line 3786
    sget-object v1, Lrv;->p:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "nextIfComma"

    const-string v4, "()Z"

    move-object/from16 p14, p3

    move/from16 p15, v0

    move-object/from16 p16, v1

    move-object/from16 p17, v3

    move-object/from16 p18, v4

    move/from16 p19, v2

    invoke-virtual/range {p14 .. p19}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x57

    .line 3787
    invoke-virtual {v8, v0}, Lse;->a(I)V

    .line 3790
    :cond_16
    invoke-virtual {v8, v11}, Lse;->a(Lsc;)V

    const/4 v0, 0x1

    .line 3791
    invoke-virtual {v8, v13, v0}, Lse;->c(II)V

    move-object/from16 v0, p8

    const/16 v1, 0xa7

    .line 3792
    invoke-virtual {v8, v1, v0}, Lse;->a(ILsc;)V

    move-object/from16 v0, p6

    .line 3794
    invoke-virtual {v8, v0}, Lse;->a(Lsc;)V

    if-nez p13, :cond_17

    const/16 v0, 0x19

    .line 3797
    invoke-virtual {v8, v0, v10}, Lse;->b(II)V

    const/16 v0, 0xb6

    .line 3798
    sget-object v1, Lrv;->p:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "nextIfComma"

    const-string v4, "()Z"

    move-object/from16 p4, p3

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p7, v3

    move-object/from16 p8, v4

    move/from16 p9, v2

    invoke-virtual/range {p4 .. p9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x57

    .line 3799
    invoke-virtual {v8, v0}, Lse;->a(I)V

    :cond_17
    move-object/from16 v0, v29

    .line 3802
    invoke-virtual {v8, v0}, Lse;->a(Lsc;)V

    .line 3803
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x19

    invoke-virtual {v8, v1, v0}, Lse;->b(II)V

    return v18
.end method

.method private a(Lxb$b;Ljava/lang/String;[Lsu;Ljava/lang/String;ZLse;IIIIIILjava/util/Map;Lsc;Lsc;)I
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb$b;",
            "Ljava/lang/String;",
            "[",
            "Lsu;",
            "Ljava/lang/String;",
            "Z",
            "Lse;",
            "IIIIII",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;",
            "Lsc;",
            "Lsc;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v14, p6

    move/from16 v13, p7

    .line 1895
    new-instance v12, Ljava/util/IdentityHashMap;

    invoke-direct {v12}, Ljava/util/IdentityHashMap;-><init>()V

    .line 1896
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    const/4 v10, 0x0

    move v1, v10

    .line 1897
    :goto_0
    array-length v2, v0

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v15, 0x3

    const/16 v18, 0x22

    if-ge v1, v2, :cond_2

    .line 1898
    aget-object v2, v0, v1

    .line 1899
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    iget-object v3, v2, Lsu;->b:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 1902
    new-array v4, v8, [B

    aput-byte v18, v4, v10

    .line 1904
    array-length v5, v3

    if-ne v5, v9, :cond_0

    .line 1905
    invoke-static {v3, v10, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v4, v15

    goto :goto_1

    .line 1908
    :cond_0
    invoke-static {v3, v10, v4, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1911
    :goto_1
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->b:J

    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    .line 1913
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    .line 1915
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1921
    :cond_2
    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    .line 1922
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 1923
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v0

    new-array v4, v0, [Lsc;

    .line 1925
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v10

    .line 1926
    :goto_2
    array-length v2, v4

    if-ge v1, v2, :cond_3

    .line 1927
    new-instance v2, Lsc;

    invoke-direct {v2}, Lsc;-><init>()V

    aput-object v2, v4, v1

    .line 1928
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 v3, 0x19

    .line 1932
    invoke-virtual {v14, v3, v13}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 1933
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "getRawInt"

    const-string v19, "()I"

    move-object/from16 v0, p6

    move v15, v3

    move-object/from16 v3, v17

    move-object v9, v4

    move-object/from16 v4, v19

    move-object v7, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1934
    invoke-virtual {v14, v6, v7, v9}, Lse;->a(Lsc;[I[Lsc;)V

    move/from16 v0, p12

    move v5, v10

    .line 1936
    :goto_3
    array-length v1, v9

    if-ge v5, v1, :cond_8

    .line 1937
    aget-object v1, v9, v5

    invoke-virtual {v14, v1}, Lse;->a(Lsc;)V

    .line 1939
    aget v1, v7, v5

    .line 1940
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move/from16 v21, v0

    move v0, v10

    .line 1941
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/4 v1, 0x0

    add-int/lit8 v3, v0, 0x1

    .line 1943
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-eq v3, v2, :cond_4

    .line 1944
    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    :cond_4
    move-object v2, v1

    .line 1947
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lsu;

    .line 1948
    invoke-virtual {v12, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 1949
    iget-object v0, v1, Lsu;->b:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1950
    array-length v8, v0

    const/16 v16, 0x3a

    const-wide/16 v25, 0x1b

    const-wide/16 v27, 0x13

    const-wide/16 v29, 0xb

    const-wide/16 v31, 0x3

    packed-switch v8, :pswitch_data_0

    .line 2510
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldNameLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2495
    :pswitch_0
    sget-object v8, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v33, Labf;->b:J

    move-object/from16 v36, v1

    move-object/from16 v35, v2

    add-long v1, v33, v31

    invoke-virtual {v8, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2496
    sget-object v8, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v31, Labf;->b:J

    move/from16 v34, v3

    move-object/from16 v33, v4

    add-long v3, v31, v29

    invoke-virtual {v8, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2497
    sget-object v8, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v29, Labf;->b:J

    move/from16 v38, v5

    move-object/from16 v37, v6

    add-long v5, v29, v27

    invoke-virtual {v8, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 2498
    sget-object v8, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v27, Labf;->b:J

    move-object/from16 v39, v9

    add-long v9, v27, v25

    invoke-virtual {v8, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 2499
    sget-object v10, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v25, Labf;->b:J

    const-wide/16 v27, 0x23

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    add-long v11, v25, v27

    invoke-virtual {v10, v0, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 2500
    invoke-virtual {v14, v15, v13}, Lse;->b(II)V

    .line 2501
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2502
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2503
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2504
    invoke-virtual {v14, v8, v9}, Lse;->a(J)V

    .line 2505
    invoke-virtual {v14, v10, v11}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2506
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match43"

    const-string v4, "(JJJJJ)Z"

    move-object/from16 v0, p6

    move-object/from16 v8, v36

    move-object/from16 v12, v35

    move/from16 v35, v38

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v38, v7

    move-object/from16 v42, v8

    move-object/from16 v43, v12

    move v12, v15

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x3

    goto/16 :goto_8

    :pswitch_1
    move-object v8, v1

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    move-object v12, v2

    .line 2475
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2476
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2477
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v29, Labf;->b:J

    add-long v10, v29, v27

    invoke-virtual {v5, v0, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 2478
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v27, Labf;->b:J

    move-object v11, v7

    add-long v6, v27, v25

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/16 v7, 0x8

    .line 2480
    new-array v7, v7, [B

    const/16 v15, 0x23

    move-object/from16 v42, v8

    move-object/from16 v38, v11

    const/4 v8, 0x0

    const/4 v11, 0x7

    .line 2481
    invoke-static {v0, v15, v7, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v7, v11

    .line 2483
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    move-object/from16 v43, v12

    sget-wide v11, Labf;->b:J

    invoke-virtual {v0, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    const/16 v0, 0x19

    .line 2485
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2486
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2487
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2488
    invoke-virtual {v14, v9, v10}, Lse;->a(J)V

    .line 2489
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2490
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2491
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match42"

    const-string v4, "(JJJJJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2454
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2455
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2456
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    add-long v7, v7, v27

    invoke-virtual {v5, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 2457
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v9, Labf;->b:J

    add-long v9, v9, v25

    invoke-virtual {v5, v0, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    const/16 v5, 0x8

    .line 2459
    new-array v5, v5, [B

    const/16 v11, 0x23

    const/4 v12, 0x6

    const/4 v15, 0x0

    .line 2460
    invoke-static {v0, v11, v5, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v5, v12

    const/4 v0, 0x7

    aput-byte v16, v5, v0

    .line 2463
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v11, Labf;->b:J

    invoke-virtual {v0, v5, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/16 v0, 0x19

    .line 2465
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2466
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2467
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2468
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    .line 2469
    invoke-virtual {v14, v9, v10}, Lse;->a(J)V

    .line 2470
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2471
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match41"

    const-string v4, "(JJJJJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2437
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2438
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2439
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 2440
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    add-long v8, v8, v25

    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 2441
    sget-object v9, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v10, Labf;->b:J

    const-wide/16 v15, 0x23

    add-long/2addr v10, v15

    invoke-virtual {v9, v0, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    const/16 v10, 0x19

    .line 2443
    invoke-virtual {v14, v10, v13}, Lse;->b(II)V

    .line 2444
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2445
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2446
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2447
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    .line 2448
    invoke-virtual {v14, v9}, Lse;->b(I)V

    const/16 v1, 0x27

    .line 2449
    aget-byte v0, v0, v1

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2450
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match40"

    const-string v4, "(JJJJIB)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2421
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2422
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2423
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 2424
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    add-long v8, v8, v25

    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 2425
    sget-object v9, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v10, Labf;->b:J

    const-wide/16 v15, 0x23

    add-long/2addr v10, v15

    invoke-virtual {v9, v0, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v9, 0x19

    .line 2427
    invoke-virtual {v14, v9, v13}, Lse;->b(II)V

    .line 2428
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2429
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2430
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2431
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    .line 2432
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2433
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match39"

    const-string v4, "(JJJJI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_5
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2400
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2401
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2402
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 2403
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    add-long v8, v8, v25

    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    const/4 v9, 0x4

    .line 2404
    new-array v10, v9, [B

    const/16 v9, 0x23

    .line 2405
    aget-byte v9, v0, v9

    const/4 v11, 0x0

    aput-byte v9, v10, v11

    const/16 v9, 0x24

    .line 2406
    aget-byte v9, v0, v9

    const/4 v11, 0x1

    aput-byte v9, v10, v11

    const/16 v9, 0x25

    .line 2407
    aget-byte v0, v0, v9

    const/4 v9, 0x2

    aput-byte v0, v10, v9

    const/4 v0, 0x3

    aput-byte v18, v10, v0

    .line 2409
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v11, Labf;->b:J

    invoke-virtual {v0, v10, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v9, 0x19

    .line 2411
    invoke-virtual {v14, v9, v13}, Lse;->b(II)V

    .line 2412
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2413
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2414
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2415
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    .line 2416
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2417
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match38"

    const-string v4, "(JJJJI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_6
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2379
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2380
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2381
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 2382
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    add-long v8, v8, v25

    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    const/4 v9, 0x4

    .line 2383
    new-array v10, v9, [B

    const/16 v9, 0x23

    .line 2384
    aget-byte v9, v0, v9

    const/4 v11, 0x0

    aput-byte v9, v10, v11

    const/16 v9, 0x24

    .line 2385
    aget-byte v0, v0, v9

    const/4 v9, 0x1

    aput-byte v0, v10, v9

    const/4 v0, 0x2

    aput-byte v18, v10, v0

    const/4 v0, 0x3

    aput-byte v16, v10, v0

    .line 2388
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v11, Labf;->b:J

    invoke-virtual {v0, v10, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v9, 0x19

    .line 2390
    invoke-virtual {v14, v9, v13}, Lse;->b(II)V

    .line 2391
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2392
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2393
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2394
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    .line 2395
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2396
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match37"

    const-string v4, "(JJJJI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_7
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2364
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2365
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2366
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 2367
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    add-long v8, v8, v25

    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    const/16 v9, 0x19

    .line 2369
    invoke-virtual {v14, v9, v13}, Lse;->b(II)V

    .line 2370
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2371
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2372
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2373
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    const/16 v1, 0x23

    .line 2374
    aget-byte v0, v0, v1

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2375
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match36"

    const-string v4, "(JJJJB)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_8
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2350
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2351
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2352
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 2353
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    add-long v8, v8, v25

    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    const/16 v0, 0x19

    .line 2355
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2356
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2357
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2358
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2359
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2360
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match35"

    const-string v4, "(JJJJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_9
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2333
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2334
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2335
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    add-long v7, v7, v27

    invoke-virtual {v5, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    const/16 v5, 0x8

    .line 2336
    new-array v5, v5, [B

    const/16 v9, 0x1b

    const/4 v6, 0x7

    const/4 v10, 0x0

    .line 2337
    invoke-static {v0, v9, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v5, v6

    .line 2339
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v9, Labf;->b:J

    invoke-virtual {v0, v5, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/16 v0, 0x19

    .line 2341
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2342
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2343
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2344
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    .line 2345
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2346
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match34"

    const-string v4, "(JJJJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_a
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2315
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2316
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2317
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    add-long v7, v7, v27

    invoke-virtual {v5, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    const/16 v5, 0x8

    .line 2318
    new-array v5, v5, [B

    const/16 v9, 0x1b

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 2319
    invoke-static {v0, v9, v5, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v5, v10

    const/4 v0, 0x7

    aput-byte v16, v5, v0

    .line 2322
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v9, Labf;->b:J

    invoke-virtual {v0, v5, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/16 v0, 0x19

    .line 2324
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2325
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2326
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2327
    invoke-virtual {v14, v7, v8}, Lse;->a(J)V

    .line 2328
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2329
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match33"

    const-string v4, "(JJJJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_b
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2301
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2302
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2303
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 2304
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    add-long v8, v8, v25

    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    const/16 v8, 0x19

    .line 2305
    invoke-virtual {v14, v8, v13}, Lse;->b(II)V

    .line 2306
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2307
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2308
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2309
    invoke-virtual {v14, v7}, Lse;->b(I)V

    const/16 v1, 0x1f

    .line 2310
    aget-byte v0, v0, v1

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2311
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match32"

    const-string v4, "(JJJIB)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_c
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2288
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2289
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2290
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 2291
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    add-long v8, v8, v25

    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v7, 0x19

    .line 2292
    invoke-virtual {v14, v7, v13}, Lse;->b(II)V

    .line 2293
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2294
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2295
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2296
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2297
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match31"

    const-string v4, "(JJJI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_d
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2269
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2270
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2271
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/4 v7, 0x4

    .line 2272
    new-array v8, v7, [B

    const/16 v7, 0x1b

    .line 2273
    aget-byte v7, v0, v7

    const/4 v9, 0x0

    aput-byte v7, v8, v9

    const/16 v7, 0x1c

    .line 2274
    aget-byte v7, v0, v7

    const/4 v9, 0x1

    aput-byte v7, v8, v9

    const/16 v7, 0x1d

    .line 2275
    aget-byte v0, v0, v7

    const/4 v7, 0x2

    aput-byte v0, v8, v7

    const/4 v0, 0x3

    aput-byte v18, v8, v0

    .line 2277
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v9, Labf;->b:J

    invoke-virtual {v0, v8, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v7, 0x19

    .line 2279
    invoke-virtual {v14, v7, v13}, Lse;->b(II)V

    .line 2280
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2281
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2282
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2283
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2284
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match30"

    const-string v4, "(JJJI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_e
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2250
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2251
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2252
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/4 v7, 0x4

    .line 2253
    new-array v8, v7, [B

    const/16 v7, 0x1b

    .line 2254
    aget-byte v7, v0, v7

    const/4 v9, 0x0

    aput-byte v7, v8, v9

    const/16 v7, 0x1c

    .line 2255
    aget-byte v0, v0, v7

    const/4 v7, 0x1

    aput-byte v0, v8, v7

    const/4 v0, 0x2

    aput-byte v18, v8, v0

    const/4 v0, 0x3

    aput-byte v16, v8, v0

    .line 2258
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v9, Labf;->b:J

    invoke-virtual {v0, v8, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v7, 0x19

    .line 2260
    invoke-virtual {v14, v7, v13}, Lse;->b(II)V

    .line 2261
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2262
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2263
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    .line 2264
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2265
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match29"

    const-string v4, "(JJJI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_f
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2238
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2239
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2240
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/16 v7, 0x19

    .line 2241
    invoke-virtual {v14, v7, v13}, Lse;->b(II)V

    .line 2242
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2243
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2244
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    const/16 v1, 0x1b

    .line 2245
    aget-byte v0, v0, v1

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2246
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match28"

    const-string v4, "(JJJB)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_10
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2227
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2228
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2229
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/16 v0, 0x19

    .line 2230
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2231
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2232
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2233
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2234
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match27"

    const-string v4, "(JJJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_11
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2211
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2212
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    const/16 v5, 0x8

    .line 2214
    new-array v5, v5, [B

    const/16 v7, 0x13

    const/4 v6, 0x7

    const/4 v8, 0x0

    .line 2215
    invoke-static {v0, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v5, v6

    .line 2217
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    invoke-virtual {v0, v5, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/16 v0, 0x19

    .line 2219
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2220
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2221
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2222
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2223
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match26"

    const-string v4, "(JJJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_12
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2194
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2195
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    const/16 v5, 0x8

    .line 2197
    new-array v5, v5, [B

    const/16 v7, 0x13

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 2198
    invoke-static {v0, v7, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v5, v8

    const/4 v0, 0x7

    aput-byte v16, v5, v0

    .line 2201
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    invoke-virtual {v0, v5, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const/16 v0, 0x19

    .line 2203
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2204
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2205
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2206
    invoke-virtual {v14, v5, v6}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2207
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match25"

    const-string v4, "(JJJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_13
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2182
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2183
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2184
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    const/16 v6, 0x19

    .line 2185
    invoke-virtual {v14, v6, v13}, Lse;->b(II)V

    .line 2186
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2187
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2188
    invoke-virtual {v14, v5}, Lse;->b(I)V

    const/16 v1, 0x17

    .line 2189
    aget-byte v0, v0, v1

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2190
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match24"

    const-string v4, "(JJIB)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_14
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2171
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2172
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 2173
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    add-long v6, v6, v27

    invoke-virtual {v5, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v5, 0x19

    .line 2174
    invoke-virtual {v14, v5, v13}, Lse;->b(II)V

    .line 2175
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2176
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2177
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2178
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match23"

    const-string v4, "(JJI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_15
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2154
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2155
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    const/4 v5, 0x4

    .line 2156
    new-array v6, v5, [B

    const/16 v5, 0x13

    .line 2157
    aget-byte v5, v0, v5

    const/4 v7, 0x0

    aput-byte v5, v6, v7

    const/16 v5, 0x14

    .line 2158
    aget-byte v5, v0, v5

    const/4 v7, 0x1

    aput-byte v5, v6, v7

    const/16 v5, 0x15

    .line 2159
    aget-byte v0, v0, v5

    const/4 v5, 0x2

    aput-byte v0, v6, v5

    const/4 v0, 0x3

    aput-byte v18, v6, v0

    .line 2161
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    invoke-virtual {v0, v6, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v5, 0x19

    .line 2163
    invoke-virtual {v14, v5, v13}, Lse;->b(II)V

    .line 2164
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2165
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2166
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2167
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match22"

    const-string v4, "(JJI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_16
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2137
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2138
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    const/4 v5, 0x4

    .line 2139
    new-array v6, v5, [B

    const/16 v5, 0x13

    .line 2140
    aget-byte v5, v0, v5

    const/4 v7, 0x0

    aput-byte v5, v6, v7

    const/16 v5, 0x14

    .line 2141
    aget-byte v0, v0, v5

    const/4 v5, 0x1

    aput-byte v0, v6, v5

    const/4 v0, 0x2

    aput-byte v18, v6, v0

    const/4 v0, 0x3

    aput-byte v16, v6, v0

    .line 2144
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    invoke-virtual {v0, v6, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v5, 0x19

    .line 2146
    invoke-virtual {v14, v5, v13}, Lse;->b(II)V

    .line 2147
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2148
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    .line 2149
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2150
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match21"

    const-string v4, "(JJI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_17
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2127
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2128
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    const/16 v5, 0x19

    .line 2129
    invoke-virtual {v14, v5, v13}, Lse;->b(II)V

    .line 2130
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2131
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    const/16 v1, 0x13

    .line 2132
    aget-byte v0, v0, v1

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2133
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match20"

    const-string v4, "(JJB)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_18
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2118
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2119
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    const/16 v0, 0x19

    .line 2120
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2121
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2122
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2123
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match19"

    const-string v4, "(JJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_19
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2104
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const/16 v3, 0x8

    .line 2106
    new-array v3, v3, [B

    const/16 v4, 0xb

    const/4 v5, 0x7

    const/4 v6, 0x0

    .line 2107
    invoke-static {v0, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v3, v5

    .line 2109
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    invoke-virtual {v0, v3, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    const/16 v0, 0x19

    .line 2111
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2112
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2113
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2114
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match18"

    const-string v4, "(JJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_1a
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2089
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const/16 v3, 0x8

    .line 2091
    new-array v3, v3, [B

    const/16 v4, 0xb

    const/4 v5, 0x6

    const/4 v7, 0x0

    .line 2092
    invoke-static {v0, v4, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v3, v5

    const/4 v0, 0x7

    aput-byte v16, v3, v0

    .line 2095
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    invoke-virtual {v0, v3, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    const/16 v0, 0x19

    .line 2097
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    .line 2098
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2099
    invoke-virtual {v14, v3, v4}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2100
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match17"

    const-string v4, "(JJ)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_1b
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2079
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2080
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    const/16 v4, 0x19

    .line 2081
    invoke-virtual {v14, v4, v13}, Lse;->b(II)V

    .line 2082
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2083
    invoke-virtual {v14, v3}, Lse;->b(I)V

    const/16 v1, 0xf

    .line 2084
    aget-byte v0, v0, v1

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2085
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match16"

    const-string v4, "(JIB)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_1c
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2070
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 2071
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v29

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v3, 0x19

    .line 2072
    invoke-virtual {v14, v3, v13}, Lse;->b(II)V

    .line 2073
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2074
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2075
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match15"

    const-string v4, "(JI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_1d
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2056
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const/4 v3, 0x4

    .line 2057
    new-array v4, v3, [B

    const/16 v3, 0xb

    .line 2058
    aget-byte v3, v0, v3

    const/4 v5, 0x0

    aput-byte v3, v4, v5

    const/16 v3, 0xc

    .line 2059
    aget-byte v3, v0, v3

    const/4 v5, 0x1

    aput-byte v3, v4, v5

    const/16 v3, 0xd

    .line 2060
    aget-byte v0, v0, v3

    const/4 v3, 0x2

    aput-byte v0, v4, v3

    const/4 v0, 0x3

    aput-byte v18, v4, v0

    .line 2062
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->b:J

    invoke-virtual {v0, v4, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v3, 0x19

    .line 2063
    invoke-virtual {v14, v3, v13}, Lse;->b(II)V

    .line 2064
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2065
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2066
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match14"

    const-string v4, "(JI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_1e
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2042
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const/4 v3, 0x4

    .line 2043
    new-array v4, v3, [B

    const/16 v3, 0xb

    .line 2044
    aget-byte v3, v0, v3

    const/4 v5, 0x0

    aput-byte v3, v4, v5

    const/16 v3, 0xc

    .line 2045
    aget-byte v0, v0, v3

    const/4 v3, 0x1

    aput-byte v0, v4, v3

    const/4 v0, 0x2

    aput-byte v18, v4, v0

    const/4 v0, 0x3

    aput-byte v16, v4, v0

    .line 2048
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->b:J

    invoke-virtual {v0, v4, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v3, 0x19

    .line 2049
    invoke-virtual {v14, v3, v13}, Lse;->b(II)V

    .line 2050
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    .line 2051
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2052
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match13"

    const-string v4, "(JI)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_1f
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2034
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const/16 v3, 0x19

    .line 2035
    invoke-virtual {v14, v3, v13}, Lse;->b(II)V

    .line 2036
    invoke-virtual {v14, v1, v2}, Lse;->a(J)V

    const/16 v1, 0xb

    .line 2037
    aget-byte v0, v0, v1

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2038
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match12"

    const-string v4, "(JB)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_20
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 2027
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    const/16 v2, 0x19

    .line 2028
    invoke-virtual {v14, v2, v13}, Lse;->b(II)V

    .line 2029
    invoke-virtual {v14, v0, v1}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2030
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match11"

    const-string v4, "(J)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_21
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    const/16 v1, 0x8

    .line 2017
    new-array v1, v1, [B

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2018
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v1, v2

    .line 2020
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    const/16 v2, 0x19

    .line 2021
    invoke-virtual {v14, v2, v13}, Lse;->b(II)V

    .line 2022
    invoke-virtual {v14, v0, v1}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2023
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match10"

    const-string v4, "(J)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_22
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    const/16 v1, 0x8

    .line 2006
    new-array v1, v1, [B

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2007
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v18, v1, v2

    const/4 v0, 0x7

    aput-byte v16, v1, v0

    .line 2010
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    const/16 v2, 0x19

    .line 2011
    invoke-virtual {v14, v2, v13}, Lse;->b(II)V

    .line 2012
    invoke-virtual {v14, v0, v1}, Lse;->a(J)V

    const/16 v1, 0xb6

    .line 2013
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match9"

    const-string v4, "(J)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_23
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 1998
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    const/16 v2, 0x19

    .line 1999
    invoke-virtual {v14, v2, v13}, Lse;->b(II)V

    .line 2000
    invoke-virtual {v14, v1}, Lse;->b(I)V

    const/4 v1, 0x7

    .line 2001
    aget-byte v0, v0, v1

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 2002
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match8"

    const-string v4, "(IB)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_24
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    .line 1991
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    add-long v2, v2, v31

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v1, 0x19

    .line 1992
    invoke-virtual {v14, v1, v13}, Lse;->b(II)V

    .line 1993
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 1994
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match7"

    const-string v4, "(I)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :pswitch_25
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    const/4 v1, 0x4

    .line 1979
    new-array v2, v1, [B

    const/4 v3, 0x3

    .line 1980
    aget-byte v4, v0, v3

    const/4 v5, 0x0

    aput-byte v4, v2, v5

    .line 1981
    aget-byte v4, v0, v1

    const/4 v1, 0x1

    aput-byte v4, v2, v1

    const/4 v1, 0x5

    .line 1982
    aget-byte v0, v0, v1

    const/4 v1, 0x2

    aput-byte v0, v2, v1

    aput-byte v18, v2, v3

    .line 1984
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v3, Labf;->b:J

    invoke-virtual {v0, v2, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v1, 0x19

    .line 1985
    invoke-virtual {v14, v1, v13}, Lse;->b(II)V

    .line 1986
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 1987
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match6"

    const-string v4, "(I)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto :goto_6

    :pswitch_26
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    const/4 v8, 0x4

    .line 1967
    new-array v1, v8, [B

    const/4 v2, 0x3

    .line 1968
    aget-byte v3, v0, v2

    const/4 v10, 0x0

    aput-byte v3, v1, v10

    .line 1969
    aget-byte v0, v0, v8

    const/4 v7, 0x1

    aput-byte v0, v1, v7

    const/4 v9, 0x2

    aput-byte v18, v1, v9

    aput-byte v16, v1, v2

    .line 1972
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v2, Labf;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const/16 v1, 0x19

    .line 1973
    invoke-virtual {v14, v1, v13}, Lse;->b(II)V

    .line 1974
    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 1975
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match5"

    const-string v4, "(I)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_6
    const/4 v11, 0x3

    goto :goto_7

    :pswitch_27
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    move v1, v15

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 1961
    invoke-virtual {v14, v1, v13}, Lse;->b(II)V

    const/4 v11, 0x3

    .line 1962
    aget-byte v0, v0, v11

    invoke-virtual {v14, v0}, Lse;->b(I)V

    const/16 v1, 0xb6

    .line 1963
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match4"

    const-string v4, "(B)Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    :pswitch_28
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    move v0, v15

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x3

    .line 1957
    invoke-virtual {v14, v0, v13}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 1958
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match3"

    const-string v4, "()Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_7
    const/16 v12, 0x19

    goto :goto_8

    :pswitch_29
    move-object/from16 v42, v1

    move-object/from16 v43, v2

    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v9

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    move v12, v15

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x3

    .line 1953
    invoke-virtual {v14, v12, v13}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 1954
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfName4Match2"

    const-string v4, "()Z"

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_8
    const/16 v0, 0x99

    if-eqz v43, :cond_5

    move-object/from16 v1, v43

    goto :goto_9

    :cond_5
    move-object/from16 v1, p15

    .line 2513
    :goto_9
    invoke-virtual {v14, v0, v1}, Lse;->a(ILsc;)V

    const/4 v6, 0x0

    move-object/from16 v5, v37

    const/4 v15, 0x0

    move/from16 v19, v11

    move/from16 v20, v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move/from16 v3, p5

    move-object/from16 v4, p4

    move-object v12, v5

    move-object/from16 v5, p6

    move/from16 v24, v7

    move-object/from16 v23, v38

    move/from16 v7, p7

    move/from16 v25, v8

    move/from16 v8, p9

    move/from16 v27, v9

    move-object/from16 v26, v39

    move/from16 v9, p8

    move/from16 v28, v10

    move/from16 v10, v21

    move-object/from16 v29, v41

    move-object/from16 v11, p13

    move-object/from16 v44, v12

    move-object/from16 v30, v40

    move-object/from16 v45, v43

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, v22

    move-object/from16 v17, p2

    .line 2514
    invoke-direct/range {v0 .. v17}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v21

    const/16 v0, 0xa7

    move-object/from16 v1, p6

    move-object/from16 v2, p14

    .line 2534
    invoke-virtual {v1, v0, v2}, Lse;->a(ILsc;)V

    move-object/from16 v0, v45

    if-eqz v0, :cond_6

    .line 2537
    invoke-virtual {v1, v0}, Lse;->a(Lsc;)V

    :cond_6
    move/from16 v13, p7

    move-object v14, v1

    move/from16 v15, v20

    move-object/from16 v7, v23

    move/from16 v8, v25

    move-object/from16 v9, v26

    move/from16 v10, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v4, v33

    move/from16 v0, v34

    move/from16 v5, v35

    move-object/from16 v6, v44

    goto/16 :goto_4

    :cond_7
    move-object/from16 v2, p14

    move/from16 v35, v5

    move-object/from16 v44, v6

    move-object/from16 v23, v7

    move/from16 v25, v8

    move-object/from16 v26, v9

    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object v1, v14

    move/from16 v20, v15

    const/16 v19, 0x3

    const/16 v24, 0x1

    const/16 v27, 0x2

    const/16 v0, 0xa7

    move-object/from16 v3, v44

    .line 2541
    invoke-virtual {v1, v0, v3}, Lse;->a(ILsc;)V

    add-int/lit8 v5, v35, 0x1

    move/from16 v13, p7

    move-object v6, v3

    move/from16 v0, v21

    goto/16 :goto_3

    :cond_8
    move-object v3, v6

    move-object v1, v14

    .line 2544
    invoke-virtual {v1, v3}, Lse;->a(Lsc;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method private a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxb$b;",
            "Lsu;",
            "Z",
            "Ljava/lang/String;",
            "Lse;",
            "IIIII",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;IIIZZ",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    move/from16 v10, p6

    move/from16 v9, p7

    move/from16 v8, p8

    move-object/from16 v7, p11

    move-object/from16 v6, p17

    .line 2715
    iget-object v5, v14, Lxb$b;->a:Ljava/lang/Class;

    .line 2716
    iget-object v4, v13, Lsu;->c:Ljava/lang/Class;

    .line 2717
    iget-object v3, v13, Lsu;->d:Ljava/lang/reflect/Type;

    .line 2718
    iget-wide v1, v13, Lsu;->e:J

    .line 2719
    iget-object v0, v13, Lsu;->f:Ljava/lang/String;

    .line 2720
    iget-object v14, v13, Lsu;->t:Ljava/lang/reflect/Type;

    move-object/from16 v16, v0

    .line 2722
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->NullOnError:Lcom/alibaba/fastjson2/u$d;

    iget-wide v6, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v6, v1

    const-wide/16 v17, 0x0

    cmp-long v0, v6, v17

    const/16 v7, 0xb4

    const/16 v6, 0x19

    if-eqz v0, :cond_0

    .line 2723
    invoke-virtual {v11, v6, v10}, Lse;->b(II)V

    .line 2724
    invoke-static/range {p14 .. p14}, Lru;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lrv;->N:Ljava/lang/String;

    invoke-virtual {v11, v7, v12, v0, v1}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    invoke-virtual {v11, v6, v9}, Lse;->b(II)V

    .line 2726
    invoke-virtual {v11, v6, v8}, Lse;->b(II)V

    const/16 v0, 0xb6

    .line 2727
    sget-object v1, Lrv;->o:Ljava/lang/String;

    sget-object v2, Lxb;->o:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "readFieldValue"

    move-object/from16 p1, p5

    move/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v4

    move-object/from16 p5, v2

    move/from16 p6, v3

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return p10

    .line 2731
    :cond_0
    iget-object v0, v13, Lsu;->h:Ljava/lang/reflect/Field;

    .line 2732
    iget-object v7, v13, Lsu;->g:Ljava/lang/reflect/Method;

    move-wide/from16 v18, v1

    .line 2734
    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    .line 2736
    invoke-static {v4}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v1

    .line 2737
    invoke-static {v4}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 2739
    invoke-virtual {v11, v6, v8}, Lse;->b(II)V

    const/16 v23, 0x0

    if-nez p3, :cond_1

    if-nez v7, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 2742
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v21

    move/from16 v24, v21

    move-object/from16 v21, v1

    goto :goto_0

    :cond_2
    move-object/from16 v21, v1

    move/from16 v24, v23

    :goto_0
    const/16 v1, 0xc0

    if-eqz p3, :cond_3

    .line 2746
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2747
    invoke-static/range {v24 .. v24}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2748
    invoke-static/range {v24 .. v24}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v22

    if-nez v22, :cond_3

    iget-object v6, v15, Lxb;->h:Laba;

    .line 2749
    invoke-virtual {v6, v5}, Laba;->a(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object/from16 v6, p17

    .line 2751
    invoke-virtual {v11, v1, v6}, Lse;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v6, p17

    .line 2754
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v26, v5

    const/4 v5, 0x1

    if-ne v4, v1, :cond_4

    const/16 v1, 0x19

    .line 2755
    invoke-virtual {v11, v1, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2756
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v3, "readBoolValue"

    const-string v9, "()Z"

    move-object v14, v0

    move-object/from16 v0, p5

    move-object/from16 v29, v20

    move-object/from16 v30, v21

    move-object/from16 v31, v4

    move-object v4, v9

    move-object/from16 v9, v26

    const/16 v15, 0x3a

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v16, v7

    move-object v7, v9

    move-object v8, v14

    move-object/from16 v15, v31

    goto/16 :goto_4

    :cond_4
    move-object/from16 v31, v4

    move-object/from16 v29, v20

    move-object/from16 v30, v21

    move-object/from16 v5, v26

    const/16 v15, 0x3a

    move-object v4, v0

    .line 2757
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v1, v31

    if-ne v1, v0, :cond_5

    const/16 v0, 0x19

    .line 2758
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 2759
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "readInt32Value"

    const-string v14, "()I"

    move-object/from16 v0, p5

    move-object v15, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v9

    move-object v9, v4

    move-object v4, v14

    move-object v14, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v16, v7

    move-object v8, v9

    move-object v7, v14

    goto/16 :goto_4

    :cond_5
    move-object v15, v1

    .line 2760
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v15, v0, :cond_6

    const/16 v0, 0x19

    .line 2761
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2762
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v3, "readInt32Value"

    const-string v9, "()I"

    move-object/from16 v0, p5

    move-object v14, v4

    move-object v4, v9

    move-object v9, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    move-object/from16 v16, v7

    move-object v7, v9

    :goto_3
    move-object v8, v14

    goto/16 :goto_4

    .line 2763
    :cond_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v15, v0, :cond_7

    const/16 v0, 0x19

    .line 2764
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2765
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v3, "readInt32Value"

    const-string v9, "()I"

    move-object/from16 v0, p5

    move-object v14, v4

    move-object v4, v9

    move-object v9, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 2766
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v15, v0, :cond_8

    const/16 v0, 0x19

    .line 2767
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2768
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v3, "readInt64Value"

    const-string v9, "()J"

    move-object/from16 v0, p5

    move-object v14, v4

    move-object v4, v9

    move-object v9, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 2769
    :cond_8
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v15, v0, :cond_9

    const/16 v0, 0x19

    .line 2770
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2771
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v3, "readFloatValue"

    const-string v9, "()F"

    move-object/from16 v0, p5

    move-object v14, v4

    move-object v4, v9

    move-object v9, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 2772
    :cond_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v15, v0, :cond_a

    const/16 v0, 0x19

    .line 2773
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2774
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v3, "readDoubleValue"

    const-string v9, "()D"

    move-object/from16 v0, p5

    move-object v14, v4

    move-object v4, v9

    move-object v9, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 2775
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v15, v0, :cond_b

    const/16 v0, 0x19

    .line 2776
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2777
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v3, "readCharValue"

    const-string v9, "()C"

    move-object/from16 v0, p5

    move-object v14, v4

    move-object v4, v9

    move-object v9, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 2778
    :cond_b
    const-class v0, Ljava/lang/String;

    const/16 v1, 0xc6

    move-object/from16 v26, v5

    const/16 v5, 0x59

    if-ne v15, v0, :cond_d

    const/16 v0, 0x19

    .line 2779
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    .line 2780
    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    const/16 v2, 0xb6

    .line 2782
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v14, "readString"

    const-string v18, "()Ljava/lang/String;"

    move-object/from16 v32, v16

    move-object/from16 v0, p5

    move v1, v2

    move-object v2, v3

    move-object v3, v14

    move-object v14, v4

    move-object/from16 v4, v18

    move v6, v5

    move-object/from16 v16, v7

    move-object/from16 v7, v26

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2783
    invoke-virtual {v11, v6}, Lse;->a(I)V

    const/16 v5, 0xc6

    .line 2784
    invoke-virtual {v11, v5, v8}, Lse;->a(ILsc;)V

    const-string v0, "trim"

    move-object/from16 v1, v32

    .line 2786
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0xb6

    const/4 v5, 0x0

    const-string v2, "java/lang/String"

    const-string v3, "trim"

    const-string v4, "()Ljava/lang/String;"

    move-object/from16 v0, p5

    .line 2787
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2789
    :cond_c
    invoke-virtual {v11, v8}, Lse;->a(Lsc;)V

    goto/16 :goto_3

    :cond_d
    move v6, v5

    move-object/from16 v16, v7

    move-object/from16 v7, v26

    move v5, v1

    .line 2790
    const-class v0, Ljava/lang/Byte;

    if-ne v15, v0, :cond_e

    const/16 v0, 0x19

    .line 2791
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2792
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readInt8"

    const-string v6, "()Ljava/lang/Byte;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2793
    :cond_e
    const-class v0, Ljava/lang/Short;

    if-ne v15, v0, :cond_f

    const/16 v0, 0x19

    .line 2794
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2795
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readInt16"

    const-string v6, "()Ljava/lang/Short;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2796
    :cond_f
    const-class v0, Ljava/lang/Integer;

    if-ne v15, v0, :cond_10

    const/16 v0, 0x19

    .line 2797
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2798
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readInt32"

    const-string v6, "()Ljava/lang/Integer;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2799
    :cond_10
    const-class v0, Ljava/lang/Long;

    if-ne v15, v0, :cond_11

    const/16 v0, 0x19

    .line 2800
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2801
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readInt64"

    const-string v6, "()Ljava/lang/Long;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2802
    :cond_11
    const-class v0, Ljava/lang/Float;

    if-ne v15, v0, :cond_12

    const/16 v0, 0x19

    .line 2803
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2804
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readFloat"

    const-string v6, "()Ljava/lang/Float;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2805
    :cond_12
    const-class v0, Ljava/lang/Double;

    if-ne v15, v0, :cond_13

    const/16 v0, 0x19

    .line 2806
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2807
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readDouble"

    const-string v6, "()Ljava/lang/Double;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2808
    :cond_13
    const-class v0, Ljava/math/BigDecimal;

    if-ne v15, v0, :cond_14

    const/16 v0, 0x19

    .line 2809
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2810
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readBigDecimal"

    const-string v6, "()Ljava/math/BigDecimal;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2811
    :cond_14
    const-class v0, Ljava/math/BigInteger;

    if-ne v15, v0, :cond_15

    const/16 v0, 0x19

    .line 2812
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2813
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readBigInteger"

    const-string v6, "()Ljava/math/BigInteger;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2814
    :cond_15
    const-class v0, Ljava/lang/Number;

    if-ne v15, v0, :cond_16

    const/16 v0, 0x19

    .line 2815
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2816
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readNumber"

    const-string v6, "()Ljava/lang/Number;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2817
    :cond_16
    const-class v0, Ljava/util/UUID;

    if-ne v15, v0, :cond_17

    const/16 v0, 0x19

    .line 2818
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2819
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readUUID"

    const-string v6, "()Ljava/util/UUID;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2820
    :cond_17
    const-class v0, Ljava/time/LocalDate;

    if-ne v15, v0, :cond_18

    iget-object v0, v13, Lsu;->f:Ljava/lang/String;

    if-nez v0, :cond_18

    const/16 v0, 0x19

    .line 2821
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2822
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readLocalDate"

    const-string v6, "()Ljava/time/LocalDate;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 2823
    :cond_18
    const-class v0, Ljava/time/OffsetDateTime;

    if-ne v15, v0, :cond_19

    iget-object v0, v13, Lsu;->f:Ljava/lang/String;

    if-nez v0, :cond_19

    const/16 v0, 0x19

    .line 2824
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2825
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readOffsetDateTime"

    const-string v6, "()Ljava/time/OffsetDateTime;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 2826
    :cond_19
    const-class v0, Ljava/util/Date;

    if-ne v15, v0, :cond_1a

    iget-object v0, v13, Lsu;->f:Ljava/lang/String;

    if-nez v0, :cond_1a

    const/16 v0, 0x19

    .line 2827
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2828
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readDate"

    const-string v6, "()Ljava/util/Date;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 2829
    :cond_1a
    const-class v0, Ljava/util/Calendar;

    if-ne v15, v0, :cond_1b

    iget-object v0, v13, Lsu;->f:Ljava/lang/String;

    if-nez v0, :cond_1b

    const/16 v0, 0x19

    .line 2830
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2831
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readCalendar"

    const-string v6, "()Ljava/util/Calendar;"

    move-object/from16 v0, p5

    move-object v8, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4
    move/from16 v21, p10

    move-object v6, v7

    move-object/from16 v37, v8

    move-object v9, v13

    move-object v14, v15

    move-object/from16 v41, v29

    const/16 v0, 0x57

    const/16 v8, 0xc0

    const/16 v12, 0x19

    move-object/from16 v7, p0

    move-object v13, v11

    move-object/from16 v29, v16

    const/16 v11, 0x5f

    const/16 v16, 0x1

    goto/16 :goto_14

    .line 2833
    :cond_1b
    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    const-string v0, "REFERENCE"

    move-object/from16 v6, p11

    .line 2835
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1c

    .line 2837
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "REFERENCE"

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, p10, 0x1

    move-object/from16 v25, v0

    move/from16 v21, v5

    goto :goto_5

    :cond_1c
    move/from16 v21, p10

    move-object/from16 v25, v0

    .line 2841
    :goto_5
    invoke-static {v15}, Lahq;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2842
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    move-object/from16 v27, v0

    const/16 v0, 0x19

    .line 2844
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v28, 0xb6

    .line 2845
    sget-object v31, Lrv;->p:Ljava/lang/String;

    const/16 v32, 0x0

    const-string v33, "isReference"

    const-string v34, "()Z"

    move-object/from16 v35, v27

    move-object/from16 v0, p5

    move-object/from16 v36, v1

    move/from16 v1, v28

    move-object/from16 v27, v2

    move-object/from16 v2, v31

    move-object/from16 v28, v3

    move-object/from16 v3, v33

    move-object/from16 v37, v4

    move-object/from16 v4, v34

    move-object v6, v5

    move-object/from16 v26, v14

    const/16 v14, 0x99

    move/from16 v5, v32

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, v35

    .line 2846
    invoke-virtual {v11, v14, v5}, Lse;->a(ILsc;)V

    const/16 v0, 0x19

    .line 2848
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2849
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/16 v31, 0x0

    const-string v3, "readReference"

    const-string v4, "()Ljava/lang/String;"

    move-object/from16 v0, p5

    move-object/from16 v38, v5

    move/from16 v5, v31

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x59

    .line 2850
    invoke-virtual {v11, v5}, Lse;->a(I)V

    .line 2851
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x3a

    invoke-virtual {v11, v4, v0}, Lse;->b(II)V

    const-string v0, ".."

    .line 2852
    invoke-virtual {v11, v0}, Lse;->a(Ljava/lang/String;)V

    const/16 v20, 0x0

    const-string v2, "java/lang/String"

    const-string v3, "equals"

    const-string v31, "(Ljava/lang/Object;)Z"

    move-object/from16 v0, p5

    move/from16 v32, v4

    move-object/from16 v4, v31

    move/from16 v31, v5

    move/from16 v5, v20

    .line 2853
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2854
    invoke-virtual {v11, v14, v6}, Lse;->a(ILsc;)V

    if-eqz v7, :cond_1d

    .line 2856
    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x19

    .line 2857
    invoke-virtual {v11, v0, v8}, Lse;->b(II)V

    move-object/from16 v5, v36

    const/16 v1, 0xa7

    .line 2859
    invoke-virtual {v11, v1, v5}, Lse;->a(ILsc;)V

    goto :goto_6

    :cond_1d
    move-object/from16 v5, v36

    const/16 v0, 0x19

    .line 2862
    :goto_6
    invoke-virtual {v11, v6}, Lse;->a(Lsc;)V

    .line 2864
    invoke-virtual {v11, v0, v10}, Lse;->b(II)V

    .line 2865
    invoke-static/range {p14 .. p14}, Lru;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lrv;->N:Ljava/lang/String;

    const/16 v6, 0xb4

    invoke-virtual {v11, v6, v12, v1, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    .line 2867
    invoke-virtual {v11, v0, v8}, Lse;->b(II)V

    .line 2868
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2869
    sget-object v2, Lrv;->o:Ljava/lang/String;

    sget-object v4, Lxb;->p:Ljava/lang/String;

    const/16 v17, 0x0

    const-string v3, "addResolveTask"

    move-object/from16 v0, p5

    move-object/from16 v39, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x57

    .line 2870
    invoke-virtual {v11, v5}, Lse;->a(I)V

    move-object/from16 v4, v29

    const/16 v0, 0xa7

    .line 2871
    invoke-virtual {v11, v0, v4}, Lse;->a(ILsc;)V

    move-object/from16 v0, v38

    .line 2873
    invoke-virtual {v11, v0}, Lse;->a(Lsc;)V

    goto :goto_7

    :cond_1e
    move-object/from16 v39, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v37, v4

    move-object/from16 v26, v14

    move-object/from16 v4, v29

    const/16 v5, 0x57

    const/16 v6, 0xb4

    const/16 v14, 0x99

    const/16 v31, 0x59

    const/16 v32, 0x3a

    .line 2876
    :goto_7
    iget-boolean v0, v13, Lsu;->m:Z

    if-nez v0, :cond_1f

    .line 2877
    new-instance v3, Lsc;

    invoke-direct {v3}, Lsc;-><init>()V

    const/16 v0, 0x19

    .line 2879
    invoke-virtual {v11, v0, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2880
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/16 v17, 0x0

    const-string v20, "isIgnoreNoneSerializable"

    const-string v29, "()Z"

    move-object/from16 v0, p5

    move-object v6, v3

    move-object/from16 v3, v20

    move-object/from16 v40, v4

    move-object/from16 v4, v29

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2881
    invoke-virtual {v11, v14, v6}, Lse;->a(ILsc;)V

    const/16 v5, 0x19

    .line 2882
    invoke-virtual {v11, v5, v9}, Lse;->b(II)V

    .line 2883
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const-string v3, "skipValue"

    const-string v4, "()V"

    move/from16 v20, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x57

    .line 2884
    invoke-virtual {v11, v5}, Lse;->a(I)V

    move-object/from16 v4, v40

    const/16 v0, 0xa7

    .line 2885
    invoke-virtual {v11, v0, v4}, Lse;->a(ILsc;)V

    .line 2887
    invoke-virtual {v11, v6}, Lse;->a(Lsc;)V

    goto :goto_8

    :cond_1f
    const/16 v20, 0x19

    .line 2890
    :goto_8
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2891
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.common.collect.Immutable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_9

    :cond_20
    move/from16 v0, v23

    :goto_9
    if-eqz v0, :cond_21

    .line 2894
    invoke-static/range {v26 .. v26}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 2895
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_21

    move/from16 v0, v23

    :cond_21
    if-eqz v0, :cond_22

    .line 2900
    invoke-virtual {v15}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {v15}, Laax;->c(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_22

    move/from16 v0, v23

    :cond_22
    if-eqz v0, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v14, v4

    move/from16 v4, p6

    move v6, v5

    move/from16 v5, p7

    const/16 v17, 0xb4

    move/from16 v6, p8

    move-object/from16 v8, p11

    move-object/from16 p3, v7

    move-object/from16 v29, v16

    move/from16 v7, p9

    move/from16 v8, v21

    move-object/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p14

    move/from16 v13, p15

    move-object/from16 v41, v14

    move-object/from16 v20, v26

    move/from16 v14, p16

    move-object/from16 p9, v15

    move-object/from16 v15, p3

    move-object/from16 v16, p9

    move-object/from16 v17, v28

    move-object/from16 v21, v27

    move-object/from16 v22, v25

    .line 2905
    invoke-direct/range {v0 .. v22}, Lxb;->a(Lsu;Ljava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v6, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p9

    move/from16 v21, v0

    move-object/from16 v0, v39

    const/16 v8, 0xc0

    const/16 v11, 0x5f

    const/16 v12, 0x19

    const/16 v16, 0x1

    goto/16 :goto_13

    :cond_23
    move-object/from16 v41, v4

    move-object/from16 p3, v7

    move-object/from16 p9, v15

    move-object/from16 v29, v16

    .line 2929
    invoke-static/range {p14 .. p14}, Lxb;->a(I)Ljava/lang/String;

    move-result-object v12

    .line 2931
    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    move-object/from16 v13, p5

    move/from16 v15, p7

    const/16 v10, 0x19

    .line 2933
    invoke-virtual {v13, v10, v15}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2934
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfNull"

    const-string v4, "()Z"

    move-object/from16 v0, p5

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2935
    invoke-virtual {v13, v14, v6}, Lse;->a(ILsc;)V

    .line 2937
    const-class v0, Ljava/util/Optional;

    move-object/from16 v14, p9

    if-ne v14, v0, :cond_24

    const/16 v1, 0xb8

    const/4 v5, 0x0

    const-string v2, "java/util/Optional"

    const-string v3, "empty"

    const-string v4, "()Ljava/util/Optional;"

    move-object/from16 v0, p5

    .line 2938
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a
    move-object/from16 v9, v39

    const/16 v0, 0xa7

    const/4 v11, 0x1

    goto :goto_b

    .line 2939
    :cond_24
    const-class v0, Ljava/util/OptionalInt;

    if-ne v14, v0, :cond_25

    const/16 v1, 0xb8

    const/4 v5, 0x0

    const-string v2, "java/util/OptionalInt"

    const-string v3, "empty"

    const-string v4, "()Ljava/util/OptionalInt;"

    move-object/from16 v0, p5

    .line 2940
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    .line 2941
    :cond_25
    const-class v0, Ljava/util/OptionalLong;

    if-ne v14, v0, :cond_26

    const/16 v1, 0xb8

    const/4 v5, 0x0

    const-string v2, "java/util/OptionalLong"

    const-string v3, "empty"

    const-string v4, "()Ljava/util/OptionalLong;"

    move-object/from16 v0, p5

    .line 2942
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    .line 2943
    :cond_26
    const-class v0, Ljava/util/OptionalDouble;

    if-ne v14, v0, :cond_27

    const/16 v1, 0xb8

    const/4 v5, 0x0

    const-string v2, "java/util/OptionalDouble"

    const-string v3, "empty"

    const-string v4, "()Ljava/util/OptionalDouble;"

    move-object/from16 v0, p5

    .line 2944
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_27
    const/4 v11, 0x1

    .line 2946
    invoke-virtual {v13, v11}, Lse;->a(I)V

    move-object/from16 v9, v39

    const/16 v0, 0xa7

    .line 2948
    :goto_b
    invoke-virtual {v13, v0, v9}, Lse;->a(ILsc;)V

    .line 2950
    invoke-virtual {v13, v6}, Lse;->a(Lsc;)V

    .line 2952
    const-class v0, [Ljava/lang/String;

    if-ne v14, v0, :cond_28

    .line 2953
    invoke-virtual {v13, v10, v15}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2954
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readStringArray"

    const-string v4, "()[Ljava/lang/String;"

    move-object/from16 v0, p5

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_c
    const/16 v8, 0xc0

    move-object/from16 v7, p0

    move-object/from16 v6, p3

    move-object/from16 v42, v9

    move v12, v10

    move/from16 v16, v11

    const/16 v11, 0x5f

    move-object/from16 v9, p2

    goto/16 :goto_12

    .line 2955
    :cond_28
    const-class v0, [I

    if-ne v14, v0, :cond_29

    .line 2956
    invoke-virtual {v13, v10, v15}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2957
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readInt32ValueArray"

    const-string v4, "()[I"

    move-object/from16 v0, p5

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c

    .line 2958
    :cond_29
    const-class v0, [J

    if-ne v14, v0, :cond_2a

    .line 2959
    invoke-virtual {v13, v10, v15}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2960
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "readInt64ValueArray"

    const-string v4, "()[J"

    move-object/from16 v0, p5

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c

    .line 2962
    :cond_2a
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v1, p15, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v7, v31

    move/from16 v6, p14

    move v15, v7

    move/from16 v7, p15

    move-object/from16 v8, v28

    move-object/from16 v42, v9

    move-object v9, v14

    move/from16 v16, v11

    move-wide/from16 v10, v18

    .line 2963
    invoke-direct/range {v0 .. v12}, Lxb;->a(Lsu;Ljava/lang/String;Lse;IIIZLjava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;)V

    goto :goto_d

    :cond_2b
    move-object/from16 v42, v9

    move/from16 v16, v11

    move/from16 v15, v31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p14

    move/from16 v7, p15

    move-object/from16 v8, v28

    move-wide/from16 v9, v18

    move-object v11, v12

    .line 2977
    invoke-direct/range {v0 .. v11}, Lxb;->a(Lsu;Ljava/lang/String;Lse;IIIZLjava/lang/reflect/Type;JLjava/lang/String;)V

    :goto_d
    if-nez v29, :cond_30

    move-object/from16 v6, p3

    if-eqz v6, :cond_2d

    .line 2992
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_e

    :cond_2c
    const/16 v8, 0xc0

    move-object/from16 v7, p0

    goto :goto_10

    .line 2993
    :cond_2d
    :goto_e
    invoke-static/range {v24 .. v24}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2994
    invoke-static/range {v24 .. v24}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_2e

    move-object/from16 v7, p0

    iget-object v0, v7, Lxb;->h:Laba;

    .line 2995
    invoke-virtual {v0, v6}, Laba;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_f

    :cond_2e
    move-object/from16 v7, p0

    :cond_2f
    move-object/from16 v9, p2

    const/16 v8, 0xc0

    goto :goto_11

    :cond_30
    move-object/from16 v7, p0

    move-object/from16 v6, p3

    :goto_f
    move-object/from16 v0, v27

    const/16 v8, 0xc0

    .line 2997
    invoke-virtual {v13, v8, v0}, Lse;->a(ILjava/lang/String;)V

    :goto_10
    move-object/from16 v9, p2

    .line 3000
    :goto_11
    iget-boolean v0, v9, Lsu;->r:Z

    if-eqz v0, :cond_31

    :try_start_0
    const-string v0, "this$0"

    .line 3002
    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3003
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    .line 3005
    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    .line 3006
    invoke-virtual {v13, v15}, Lse;->a(I)V

    const/16 v2, 0xc6

    .line 3007
    invoke-virtual {v13, v2, v10}, Lse;->a(ILsc;)V

    .line 3008
    invoke-virtual {v13, v15}, Lse;->a(I)V

    const/16 v2, 0xb2

    .line 3009
    sget-object v3, Lrv;->a:Ljava/lang/String;

    const-string v4, "UNSAFE"

    const-string v5, "Lsun/misc/Unsafe;"

    invoke-virtual {v13, v2, v3, v4, v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v11, 0x5f

    .line 3010
    :try_start_1
    invoke-virtual {v13, v11}, Lse;->a(I)V

    .line 3011
    invoke-virtual {v13, v0, v1}, Lse;->a(J)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v0, p8

    const/16 v12, 0x19

    .line 3012
    :try_start_2
    invoke-virtual {v13, v12, v0}, Lse;->b(II)V

    const/16 v1, 0xb6

    const-string v2, "sun/misc/Unsafe"

    const-string v3, "putObject"

    const-string v4, "(Ljava/lang/Object;JLjava/lang/Object;)V"

    const/4 v5, 0x0

    move-object/from16 v0, p5

    .line 3013
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3014
    invoke-virtual {v13, v10}, Lse;->a(Lsc;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_12

    :catch_0
    :cond_31
    const/16 v11, 0x5f

    :catch_1
    const/16 v12, 0x19

    :catch_2
    :goto_12
    move-object/from16 v0, v42

    .line 3022
    :goto_13
    invoke-virtual {v13, v0}, Lse;->a(Lsc;)V

    if-nez p15, :cond_32

    move/from16 v0, p7

    .line 3025
    invoke-virtual {v13, v12, v0}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 3026
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "nextIfComma"

    const-string v4, "()Z"

    move-object/from16 v0, p5

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x57

    .line 3027
    invoke-virtual {v13, v0}, Lse;->a(I)V

    goto :goto_14

    :cond_32
    const/16 v0, 0x57

    :goto_14
    const/16 v1, 0x15

    const/16 v2, 0x36

    move-object/from16 v3, v37

    if-eqz v3, :cond_42

    .line 3032
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3033
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_34

    and-int/lit8 v4, v24, 0x1

    if-eqz v4, :cond_34

    and-int/lit8 v4, v24, 0x10

    if-nez v4, :cond_34

    .line 3036
    invoke-static {v14}, Lahq;->c(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_33

    const-string v4, "java."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v4, Lzx;->a:Ljava/lang/ClassLoader;

    if-ne v0, v4, :cond_34

    :cond_33
    iget-object v0, v7, Lxb;->h:Laba;

    .line 3037
    invoke-virtual {v0, v6}, Laba;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 3038
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v6, :cond_34

    goto :goto_15

    :cond_34
    move/from16 v16, v23

    :goto_15
    if-eqz v16, :cond_35

    const/16 v0, 0xb5

    .line 3040
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p17

    move-object/from16 v4, v30

    invoke-virtual {v13, v0, v3, v1, v4}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_35
    move-object/from16 v5, p11

    .line 3042
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_38

    .line 3044
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_37

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_36

    goto :goto_16

    :cond_36
    add-int/lit8 v21, v21, 0x1

    goto :goto_17

    :cond_37
    :goto_16
    add-int/lit8 v21, v21, 0x2

    .line 3054
    :cond_38
    :goto_17
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_39

    .line 3057
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v13, v2, v4}, Lse;->b(II)V

    const-string v2, "putInt"

    const-string v4, "(Ljava/lang/Object;JI)V"

    goto/16 :goto_19

    .line 3059
    :cond_39
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_3a

    const/16 v1, 0x37

    .line 3062
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Lse;->b(II)V

    const/16 v6, 0x16

    const-string v1, "putLong"

    const-string v2, "(Ljava/lang/Object;JJ)V"

    :goto_18
    move-object v4, v2

    move-object v2, v1

    move v1, v6

    goto/16 :goto_19

    .line 3064
    :cond_3a
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_3b

    const/16 v1, 0x38

    .line 3067
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Lse;->b(II)V

    const/16 v6, 0x17

    const-string v1, "putFloat"

    const-string v2, "(Ljava/lang/Object;JF)V"

    goto :goto_18

    .line 3069
    :cond_3b
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_3c

    const/16 v1, 0x39

    .line 3072
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Lse;->b(II)V

    const/16 v6, 0x18

    const-string v1, "putDouble"

    const-string v2, "(Ljava/lang/Object;JD)V"

    goto :goto_18

    .line 3074
    :cond_3c
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_3d

    .line 3077
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v13, v2, v4}, Lse;->b(II)V

    const-string v2, "putChar"

    const-string v4, "(Ljava/lang/Object;JC)V"

    goto :goto_19

    .line 3079
    :cond_3d
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_3e

    .line 3082
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v13, v2, v4}, Lse;->b(II)V

    const-string v2, "putByte"

    const-string v4, "(Ljava/lang/Object;JB)V"

    goto :goto_19

    .line 3084
    :cond_3e
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_3f

    .line 3087
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v13, v2, v4}, Lse;->b(II)V

    const-string v2, "putShort"

    const-string v4, "(Ljava/lang/Object;JS)V"

    goto :goto_19

    .line 3089
    :cond_3f
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_40

    .line 3092
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v13, v2, v4}, Lse;->b(II)V

    const-string v2, "putBoolean"

    const-string v4, "(Ljava/lang/Object;JZ)V"

    goto :goto_19

    .line 3097
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0x3a

    invoke-virtual {v13, v6, v1}, Lse;->b(II)V

    const-string v1, "putObject"

    const-string v2, "(Ljava/lang/Object;JLjava/lang/Object;)V"

    move-object v4, v2

    move-object v2, v1

    move v1, v12

    :goto_19
    const/16 v5, 0xb2

    .line 3101
    sget-object v6, Lrv;->a:Ljava/lang/String;

    const-string v8, "UNSAFE"

    const-string v9, "Lsun/misc/Unsafe;"

    invoke-virtual {v13, v5, v6, v8, v9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    invoke-virtual {v13, v11}, Lse;->a(I)V

    .line 3104
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    .line 3105
    invoke-virtual {v5, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    .line 3104
    invoke-virtual {v13, v5, v6}, Lse;->a(J)V

    .line 3106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v13, v1, v0}, Lse;->b(II)V

    const/16 v0, 0xb6

    const/4 v1, 0x0

    const-string v3, "sun/misc/Unsafe"

    move-object/from16 p6, p5

    move/from16 p7, v0

    move-object/from16 p8, v3

    move-object/from16 p9, v2

    move-object/from16 p10, v4

    move/from16 p11, v1

    .line 3107
    invoke-virtual/range {p6 .. p11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_41
    :goto_1a
    move-object/from16 v0, v41

    goto/16 :goto_24

    :cond_42
    move-object/from16 v10, p1

    move-object/from16 v5, p11

    move-object/from16 v3, p17

    move-object/from16 v4, v30

    const/16 v6, 0x3a

    .line 3110
    iget-boolean v15, v10, Lxb$b;->d:Z

    if-nez v15, :cond_44

    if-eqz v29, :cond_44

    iget-boolean v10, v10, Lxb$b;->c:Z

    if-nez v10, :cond_43

    goto :goto_1b

    :cond_43
    move/from16 v16, v23

    :cond_44
    :goto_1b
    if-eqz v16, :cond_51

    .line 3113
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_47

    .line 3115
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3116
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v14, v3, :cond_46

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v3, :cond_45

    goto :goto_1c

    :cond_45
    add-int/lit8 v21, v21, 0x1

    goto :goto_1d

    :cond_46
    :goto_1c
    add-int/lit8 v21, v21, 0x2

    .line 3125
    :cond_47
    :goto_1d
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v3, :cond_48

    .line 3127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v2, v3}, Lse;->b(II)V

    const-string v2, "(Ljava/lang/Object;Z)V"

    :goto_1e
    move v6, v1

    :goto_1f
    move/from16 v1, p6

    goto/16 :goto_21

    .line 3129
    :cond_48
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v14, v3, :cond_49

    .line 3131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v2, v3}, Lse;->b(II)V

    const-string v2, "(Ljava/lang/Object;B)V"

    goto :goto_1e

    .line 3133
    :cond_49
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v14, v3, :cond_4a

    .line 3135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v2, v3}, Lse;->b(II)V

    const-string v2, "(Ljava/lang/Object;S)V"

    goto :goto_1e

    .line 3137
    :cond_4a
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v3, :cond_4b

    .line 3139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v2, v3}, Lse;->b(II)V

    const-string v2, "(Ljava/lang/Object;I)V"

    goto :goto_1e

    .line 3141
    :cond_4b
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v3, :cond_4c

    const/16 v1, 0x37

    .line 3143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Lse;->b(II)V

    const/16 v6, 0x16

    const-string v1, "(Ljava/lang/Object;J)V"

    :goto_20
    move-object v2, v1

    goto :goto_1f

    .line 3145
    :cond_4c
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v14, v3, :cond_4d

    .line 3147
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v2, v3}, Lse;->b(II)V

    const-string v2, "(Ljava/lang/Object;C)V"

    goto :goto_1e

    .line 3149
    :cond_4d
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v1, :cond_4e

    const/16 v1, 0x38

    .line 3151
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Lse;->b(II)V

    const/16 v6, 0x17

    const-string v1, "(Ljava/lang/Object;F)V"

    goto :goto_20

    .line 3153
    :cond_4e
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v1, :cond_4f

    const/16 v1, 0x39

    .line 3155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Lse;->b(II)V

    const/16 v6, 0x18

    const-string v1, "(Ljava/lang/Object;D)V"

    goto :goto_20

    .line 3159
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13, v6, v1}, Lse;->b(II)V

    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object v2, v1

    move v6, v12

    goto :goto_1f

    .line 3163
    :goto_21
    invoke-virtual {v13, v12, v1}, Lse;->b(II)V

    .line 3164
    invoke-static/range {p14 .. p14}, Lru;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lrv;->N:Ljava/lang/String;

    move-object/from16 v4, p4

    const/16 v5, 0xb4

    invoke-virtual {v13, v5, v4, v1, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    invoke-virtual/range {p2 .. p2}, Lsu;->e()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 3166
    instance-of v3, v1, Lqx;

    if-eqz v3, :cond_50

    .line 3167
    check-cast v1, Lqx;

    const/16 v2, 0xb6

    .line 3168
    sget-object v3, Lrv;->o:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "getFunction"

    const-string v10, "()Ljava/util/function/BiConsumer;"

    move-object/from16 p6, p5

    move/from16 p7, v2

    move-object/from16 p8, v3

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move/from16 p11, v4

    invoke-virtual/range {p6 .. p11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3169
    const-class v2, Lqx;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v8, v2}, Lse;->a(ILjava/lang/String;)V

    .line 3170
    const-class v2, Lqx;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lqy;

    invoke-static {v3}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "consumer"

    invoke-virtual {v13, v5, v2, v4, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    invoke-virtual {v13, v11}, Lse;->a(I)V

    .line 3172
    iget v1, v1, Lqx;->a:I

    invoke-virtual {v13, v1}, Lse;->b(I)V

    .line 3173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v13, v6, v0}, Lse;->b(II)V

    const/16 v0, 0xb9

    .line 3174
    const-class v1, Lqy;

    invoke-static {v1}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "accept"

    const-string v4, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    move/from16 p7, v0

    move-object/from16 p8, v1

    move-object/from16 p9, v3

    move-object/from16 p10, v4

    move/from16 p11, v2

    invoke-virtual/range {p6 .. p11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 3176
    :cond_50
    invoke-virtual {v13, v11}, Lse;->a(I)V

    .line 3177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v13, v6, v0}, Lse;->b(II)V

    const/16 v0, 0xb6

    .line 3178
    sget-object v1, Lrv;->o:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "accept"

    move-object/from16 p6, p5

    move/from16 p7, v0

    move-object/from16 p8, v1

    move-object/from16 p9, v4

    move-object/from16 p10, v2

    move/from16 p11, v3

    invoke-virtual/range {p6 .. p11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 3181
    :cond_51
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 3182
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 3185
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v6, :cond_63

    .line 3186
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v6, :cond_52

    const-string v5, "(Z)V"

    goto/16 :goto_22

    .line 3188
    :cond_52
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v14, v6, :cond_53

    const-string v5, "(B)V"

    goto/16 :goto_22

    .line 3190
    :cond_53
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v14, v6, :cond_54

    const-string v5, "(S)V"

    goto/16 :goto_22

    .line 3192
    :cond_54
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v6, :cond_55

    const-string v5, "(I)V"

    goto/16 :goto_22

    .line 3194
    :cond_55
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v6, :cond_56

    const-string v5, "(J)V"

    goto/16 :goto_22

    .line 3196
    :cond_56
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v14, v6, :cond_57

    const-string v5, "(C)V"

    goto :goto_22

    .line 3198
    :cond_57
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v6, :cond_58

    const-string v5, "(F)V"

    goto :goto_22

    .line 3200
    :cond_58
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v6, :cond_59

    const-string v5, "(D)V"

    goto :goto_22

    .line 3202
    :cond_59
    const-class v6, Ljava/lang/Boolean;

    if-ne v14, v6, :cond_5a

    const-string v5, "(Ljava/lang/Boolean;)V"

    goto :goto_22

    .line 3204
    :cond_5a
    const-class v6, Ljava/lang/Integer;

    if-ne v14, v6, :cond_5b

    const-string v5, "(Ljava/lang/Integer;)V"

    goto :goto_22

    .line 3206
    :cond_5b
    const-class v6, Ljava/lang/Long;

    if-ne v14, v6, :cond_5c

    const-string v5, "(Ljava/lang/Long;)V"

    goto :goto_22

    .line 3208
    :cond_5c
    const-class v6, Ljava/lang/Float;

    if-ne v14, v6, :cond_5d

    const-string v5, "(Ljava/lang/Float;)V"

    goto :goto_22

    .line 3210
    :cond_5d
    const-class v6, Ljava/lang/Double;

    if-ne v14, v6, :cond_5e

    const-string v5, "(Ljava/lang/Double;)V"

    goto :goto_22

    .line 3212
    :cond_5e
    const-class v6, Ljava/math/BigDecimal;

    if-ne v14, v6, :cond_5f

    const-string v5, "(Ljava/math/BigDecimal;)V"

    goto :goto_22

    .line 3214
    :cond_5f
    const-class v6, Ljava/lang/String;

    if-ne v14, v6, :cond_60

    const-string v5, "(Ljava/lang/String;)V"

    goto :goto_22

    .line 3216
    :cond_60
    const-class v6, Ljava/util/UUID;

    if-ne v14, v6, :cond_61

    const-string v5, "(Ljava/util/UUID;)V"

    goto :goto_22

    .line 3218
    :cond_61
    const-class v6, Ljava/util/List;

    if-ne v14, v6, :cond_62

    const-string v5, "(Ljava/util/List;)V"

    goto :goto_22

    .line 3220
    :cond_62
    const-class v6, Ljava/util/Map;

    if-ne v14, v6, :cond_63

    const-string v5, "(Ljava/util/Map;)V"

    :cond_63
    :goto_22
    if-nez v5, :cond_64

    .line 3226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_23

    :cond_64
    move-object v4, v5

    :goto_23
    const/16 v5, 0xb6

    const/4 v6, 0x0

    move-object/from16 p6, p5

    move/from16 p7, v5

    move-object/from16 p8, p17

    move-object/from16 p9, v2

    move-object/from16 p10, v4

    move/from16 p11, v6

    .line 3228
    invoke-virtual/range {p6 .. p11}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3229
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_41

    .line 3230
    invoke-virtual {v13, v0}, Lse;->a(I)V

    goto/16 :goto_1a

    .line 3236
    :goto_24
    invoke-virtual {v13, v0}, Lse;->a(Lsc;)V

    return v21
.end method

.method private static synthetic a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 415
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static a(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    .line 118
    invoke-static {p0}, Labe;->a(I)I

    move-result v0

    const/16 v1, 0xc

    add-int/2addr v0, v1

    .line 119
    new-array v0, v0, [C

    const/4 v2, 0x0

    const-string v3, "objectReader"

    .line 120
    invoke-virtual {v3, v2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 121
    array-length v1, v0

    invoke-static {p0, v1, v0}, Labe;->a(II[C)V

    .line 122
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_0
    const-string p0, "objectReader15"

    return-object p0

    :pswitch_1
    const-string p0, "objectReader14"

    return-object p0

    :pswitch_2
    const-string p0, "objectReader13"

    return-object p0

    :pswitch_3
    const-string p0, "objectReader12"

    return-object p0

    :pswitch_4
    const-string p0, "objectReader11"

    return-object p0

    :pswitch_5
    const-string p0, "objectReader10"

    return-object p0

    :pswitch_6
    const-string p0, "objectReader9"

    return-object p0

    :pswitch_7
    const-string p0, "objectReader8"

    return-object p0

    :pswitch_8
    const-string p0, "objectReader7"

    return-object p0

    :pswitch_9
    const-string p0, "objectReader6"

    return-object p0

    :pswitch_a
    const-string p0, "objectReader5"

    return-object p0

    :pswitch_b
    const-string p0, "objectReader4"

    return-object p0

    :pswitch_c
    const-string p0, "objectReader3"

    return-object p0

    :pswitch_d
    const-string p0, "objectReader2"

    return-object p0

    :pswitch_e
    const-string p0, "objectReader1"

    return-object p0

    :pswitch_f
    const-string p0, "objectReader0"

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

.method private static synthetic a(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 1652
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZZILqe;Ljava/util/function/Supplier;[Lsu;Ljava/lang/reflect/Constructor;)Lwz;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "ZZI",
            "Lqe;",
            "Ljava/util/function/Supplier<",
            "TT;>;[",
            "Lsu;",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Lwz;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 414
    new-instance v14, Lry;

    new-instance v1, L-$$Lambda$xb$rOf_eTzMyOZwM78-FSi4yJSTqVQ;

    invoke-direct {v1, v0}, L-$$Lambda$xb$rOf_eTzMyOZwM78-FSi4yJSTqVQ;-><init>(Ljava/lang/Class;)V

    invoke-direct {v14, v1}, Lry;-><init>(Ljava/util/function/Function;)V

    .line 418
    new-instance v15, Lxb$b;

    move/from16 v1, p4

    invoke-direct {v15, v0, v14, v1, v12}, Lxb$b;-><init>(Ljava/lang/Class;Lry;Z[Lsu;)V

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ORG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lxb;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v16, ""

    if-nez v0, :cond_0

    move-object/from16 v2, v16

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

    .line 424
    const-class v2, Lxb;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    .line 426
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    .line 429
    new-array v5, v5, [C

    .line 430
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, v5, v10}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v2, 0x2e

    .line 431
    aput-char v2, v5, v3

    .line 432
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v10, v6, v5, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 433
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v4, 0x2f

    .line 435
    aput-char v4, v5, v3

    move v6, v10

    :goto_1
    if-ge v6, v3, :cond_2

    .line 437
    aget-char v7, v5, v6

    if-ne v7, v2, :cond_1

    .line 438
    aput-char v4, v5, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 441
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    move-object v7, v1

    move-object v8, v2

    goto :goto_2

    :cond_3
    move-object v7, v1

    move-object v8, v7

    .line 447
    :goto_2
    array-length v1, v12

    const/16 v6, 0x80

    const/4 v5, 0x1

    if-ge v1, v6, :cond_4

    move/from16 v17, v5

    goto :goto_3

    :cond_4
    move/from16 v17, v10

    .line 450
    :goto_3
    array-length v1, v12

    packed-switch v1, :pswitch_data_0

    .line 488
    sget-object v1, Lrv;->r:Ljava/lang/String;

    :goto_4
    move-object v4, v1

    goto :goto_5

    .line 485
    :pswitch_0
    sget-object v1, Lrv;->D:Ljava/lang/String;

    goto :goto_4

    .line 482
    :pswitch_1
    sget-object v1, Lrv;->C:Ljava/lang/String;

    goto :goto_4

    .line 479
    :pswitch_2
    sget-object v1, Lrv;->B:Ljava/lang/String;

    goto :goto_4

    .line 476
    :pswitch_3
    sget-object v1, Lrv;->A:Ljava/lang/String;

    goto :goto_4

    .line 473
    :pswitch_4
    sget-object v1, Lrv;->z:Ljava/lang/String;

    goto :goto_4

    .line 470
    :pswitch_5
    sget-object v1, Lrv;->y:Ljava/lang/String;

    goto :goto_4

    .line 467
    :pswitch_6
    sget-object v1, Lrv;->x:Ljava/lang/String;

    goto :goto_4

    .line 464
    :pswitch_7
    sget-object v1, Lrv;->w:Ljava/lang/String;

    goto :goto_4

    .line 461
    :pswitch_8
    sget-object v1, Lrv;->v:Ljava/lang/String;

    goto :goto_4

    .line 458
    :pswitch_9
    sget-object v1, Lrv;->u:Ljava/lang/String;

    goto :goto_4

    .line 455
    :pswitch_a
    sget-object v1, Lrv;->t:Ljava/lang/String;

    goto :goto_4

    .line 452
    :pswitch_b
    sget-object v1, Lrv;->s:Ljava/lang/String;

    goto :goto_4

    :goto_5
    if-eqz v17, :cond_5

    .line 493
    invoke-direct {v11, v12, v14, v4}, Lxb;->a([Lsu;Lry;Ljava/lang/String;)V

    :cond_5
    const/16 v2, 0x34

    const/16 v3, 0x31

    .line 496
    new-array v1, v10, [Ljava/lang/String;

    move-object/from16 v18, v1

    move-object v1, v14

    move-object/from16 p4, v4

    move-object v4, v8

    move v10, v5

    move-object/from16 v5, p4

    move/from16 v19, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lry;->a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 501
    sget-object v1, Lxb;->k:Ljava/lang/String;

    .line 505
    array-length v2, v12

    const/16 v3, 0xc

    const/16 v6, 0x20

    if-gt v2, v3, :cond_6

    move v2, v6

    goto :goto_6

    :cond_6
    move/from16 v2, v19

    :goto_6
    const-string v3, "<init>"

    .line 501
    invoke-virtual {v14, v10, v3, v1, v2}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v5

    const/16 v4, 0x19

    const/4 v1, 0x0

    .line 506
    invoke-virtual {v5, v4, v1}, Lse;->b(II)V

    .line 507
    invoke-virtual {v5, v4, v10}, Lse;->b(II)V

    .line 508
    iget-object v1, v9, Lqe;->a:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 509
    iget-object v1, v9, Lqe;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lse;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 511
    :cond_7
    invoke-virtual {v5, v10}, Lse;->a(I)V

    .line 513
    :goto_7
    invoke-virtual {v5, v10}, Lse;->a(I)V

    .line 514
    iget-wide v1, v9, Lqe;->m:J

    invoke-virtual {v5, v1, v2}, Lse;->a(J)V

    .line 515
    invoke-virtual {v5, v10}, Lse;->a(I)V

    const/4 v3, 0x2

    .line 516
    invoke-virtual {v5, v4, v3}, Lse;->b(II)V

    .line 517
    invoke-virtual {v5, v10}, Lse;->a(I)V

    const/4 v2, 0x3

    .line 518
    invoke-virtual {v5, v4, v2}, Lse;->b(II)V

    const/16 v19, 0xb7

    .line 519
    sget-object v22, Lxb;->l:Ljava/lang/String;

    const/16 v23, 0x0

    const-string v21, "<init>"

    move-object/from16 v18, v5

    move-object/from16 v20, p4

    invoke-virtual/range {v18 .. v23}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object/from16 v1, p0

    move v10, v2

    move-object/from16 v2, p8

    move/from16 v21, v3

    move-object v3, v8

    move/from16 v4, v17

    move-object/from16 v22, v5

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v26, v7

    move-object/from16 v7, v22

    move-object/from16 v18, v8

    move-object/from16 v8, p4

    .line 521
    invoke-direct/range {v1 .. v8}, Lxb;->a([Lsu;Ljava/lang/String;ZIILse;Ljava/lang/String;)V

    const/16 v1, 0xb1

    move-object/from16 v2, v22

    .line 523
    invoke-virtual {v2, v1}, Lse;->a(I)V

    .line 524
    invoke-virtual {v2, v10, v10}, Lse;->d(II)V

    if-nez v0, :cond_8

    const-string v1, "java/lang/Object"

    goto :goto_8

    .line 527
    :cond_8
    invoke-static/range {p1 .. p1}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v8, v1

    if-eqz p3, :cond_9

    if-nez v13, :cond_9

    const-string v1, "createInstance0"

    goto :goto_9

    :cond_9
    const-string v1, "createInstance"

    :goto_9
    const/16 v2, 0xb0

    const-string v3, "(J)Ljava/lang/Object;"

    if-eqz p3, :cond_b

    if-eqz v13, :cond_a

    .line 532
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    const/16 v4, 0x20

    const/4 v5, 0x1

    .line 533
    invoke-virtual {v14, v5, v1, v3, v4}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v1

    const/16 v3, 0xb2

    .line 539
    sget-object v4, Lrv;->a:Ljava/lang/String;

    const-string v5, "UNSAFE"

    const-string v6, "Lsun/misc/Unsafe;"

    invoke-virtual {v1, v3, v4, v5, v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x19

    const/4 v7, 0x0

    .line 540
    invoke-virtual {v1, v3, v7}, Lse;->b(II)V

    const/16 v3, 0xb4

    .line 541
    sget-object v4, Lrv;->r:Ljava/lang/String;

    const-string v5, "objectClass"

    const-string v6, "Ljava/lang/Class;"

    invoke-virtual {v1, v3, v4, v5, v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v28, 0xb6

    const/16 v32, 0x0

    const-string v29, "sun/misc/Unsafe"

    const-string v30, "allocateInstance"

    const-string v31, "(Ljava/lang/Class;)Ljava/lang/Object;"

    move-object/from16 v27, v1

    .line 542
    invoke-virtual/range {v27 .. v32}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 543
    invoke-virtual {v1, v2}, Lse;->a(I)V

    .line 544
    invoke-virtual {v1, v10, v10}, Lse;->d(II)V

    goto :goto_a

    :cond_b
    const/16 v4, 0x20

    const/4 v7, 0x0

    if-eqz v13, :cond_c

    .line 545
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    .line 546
    invoke-virtual {v14, v5, v1, v3, v4}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v1

    .line 552
    invoke-static {v1, v8, v13}, Lxb;->a(Lse;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    .line 553
    invoke-virtual {v1, v2}, Lse;->a(I)V

    .line 554
    invoke-virtual {v1, v10, v10}, Lse;->d(II)V

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v5, 0x1

    :goto_b
    if-eqz v13, :cond_10

    .line 560
    invoke-static/range {p5 .. p5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v11, Lxb;->h:Laba;

    invoke-virtual {v1, v0}, Laba;->a(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v5

    goto :goto_c

    :cond_d
    move v1, v7

    :goto_c
    if-eqz v1, :cond_f

    .line 561
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_d

    :cond_e
    move v1, v7

    goto :goto_e

    :cond_f
    :goto_d
    move v1, v5

    .line 562
    :goto_e
    invoke-virtual {v11, v13, v1}, Lxb;->a(Ljava/lang/reflect/Constructor;Z)Ljava/util/function/Supplier;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_f

    :cond_10
    move-object/from16 v19, p7

    :goto_f
    if-eqz v17, :cond_13

    .line 568
    iget-wide v1, v9, Lqe;->m:J

    if-eqz p3, :cond_11

    .line 570
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v1, v3

    :cond_11
    move-wide/from16 v22, v1

    .line 573
    new-instance v6, Lwx;

    iget-object v3, v9, Lqe;->a:Ljava/lang/String;

    iget-object v4, v9, Lqe;->b:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v17, 0x0

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v20, v5

    move-object/from16 p3, v6

    move-wide/from16 v5, v22

    move/from16 v24, v7

    move-object v7, v9

    move-object/from16 v25, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v17

    move/from16 v13, v24

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p9

    move-wide/from16 v4, v22

    move-object/from16 v6, v25

    move-object/from16 v7, p8

    move-object v8, v14

    move-object/from16 v9, v18

    move-object/from16 v10, p3

    .line 575
    invoke-direct/range {v1 .. v10}, Lxb;->a(Lxb$b;Ljava/lang/reflect/Constructor;JLjava/lang/String;[Lsu;Lry;Ljava/lang/String;Lwx;)V

    .line 576
    invoke-direct/range {v1 .. v10}, Lxb;->b(Lxb$b;Ljava/lang/reflect/Constructor;JLjava/lang/String;[Lsu;Lry;Ljava/lang/String;Lwx;)V

    .line 578
    invoke-direct/range {v1 .. v10}, Lxb;->c(Lxb$b;Ljava/lang/reflect/Constructor;JLjava/lang/String;[Lsu;Lry;Ljava/lang/String;Lwx;)V

    .line 580
    sget-object v1, Lrv;->r:Ljava/lang/String;

    move-object/from16 v2, p4

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->s:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->t:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->u:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->v:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->w:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->x:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->y:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->z:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->A:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->B:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->C:Ljava/lang/String;

    if-eq v2, v1, :cond_12

    sget-object v1, Lrv;->D:Ljava/lang/String;

    if-ne v2, v1, :cond_14

    :cond_12
    move-object/from16 v2, p3

    move-object/from16 v1, v18

    .line 594
    invoke-direct {v11, v12, v14, v1, v2}, Lxb;->a([Lsu;Lry;Ljava/lang/String;Lwx;)V

    .line 595
    invoke-direct {v11, v12, v14, v1, v2}, Lxb;->b([Lsu;Lry;Ljava/lang/String;Lwx;)V

    goto :goto_10

    :cond_13
    move/from16 v20, v5

    move v13, v7

    .line 599
    :cond_14
    :goto_10
    invoke-virtual {v14}, Lry;->a()[B

    move-result-object v1

    .line 601
    :try_start_0
    iget-object v2, v11, Lxb;->h:Laba;

    array-length v3, v1

    move-object/from16 v4, v26

    invoke-virtual {v2, v4, v1, v13, v3}, Laba;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v1

    .line 603
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    aget-object v1, v1, v13

    const/4 v2, 0x3

    .line 604
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v13

    aput-object v19, v2, v20

    aput-object v12, v2, v21

    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwz;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 607
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create objectReader error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_15

    goto :goto_11

    .line 609
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", objectType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_11
    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

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

.method private a(Ljava/lang/String;Lse;IIIII)V
    .locals 13

    move-object v6, p2

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1387
    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    const/16 v11, 0x19

    const/4 v0, 0x0

    .line 1389
    invoke-virtual {p2, v11, v0}, Lse;->b(II)V

    .line 1390
    invoke-virtual {p2, v11, v7}, Lse;->b(II)V

    const/16 v12, 0x16

    .line 1391
    invoke-virtual {p2, v12, v8}, Lse;->b(II)V

    .line 1392
    sget-object v4, Lxb;->t:Ljava/lang/String;

    const/16 v1, 0xb6

    const-string v3, "checkAutoType"

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x59

    .line 1394
    invoke-virtual {p2, v0}, Lse;->a(I)V

    const/16 v0, 0x3a

    .line 1395
    invoke-virtual {p2, v0, v9}, Lse;->b(II)V

    const/16 v0, 0xc6

    .line 1396
    invoke-virtual {p2, v0, v10}, Lse;->a(ILsc;)V

    .line 1398
    invoke-virtual {p2, v11, v9}, Lse;->b(II)V

    .line 1399
    invoke-virtual {p2, v11, v7}, Lse;->b(II)V

    move/from16 v0, p4

    .line 1400
    invoke-virtual {p2, v11, v0}, Lse;->b(II)V

    move/from16 v0, p5

    .line 1401
    invoke-virtual {p2, v11, v0}, Lse;->b(II)V

    .line 1402
    invoke-virtual {p2, v12, v8}, Lse;->b(II)V

    .line 1403
    sget-object v2, Lrv;->q:Ljava/lang/String;

    sget-object v4, Lxb;->m:Ljava/lang/String;

    const/16 v1, 0xb9

    const-string v3, "readJSONBObject"

    const/4 v5, 0x1

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0xb0

    .line 1404
    invoke-virtual {p2, v0}, Lse;->a(I)V

    .line 1406
    invoke-virtual {p2, v10}, Lse;->a(Lsc;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lse;IILjava/lang/reflect/Type;)V
    .locals 3

    .line 3808
    instance-of v0, p5, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 3809
    check-cast p5, Ljava/lang/Class;

    .line 3810
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3811
    invoke-virtual {p5}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    const-string v2, "java."

    .line 3812
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/fastjson2/JSONArray;

    if-eq p5, v0, :cond_1

    const-class v0, Lcom/alibaba/fastjson2/e;

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 3816
    invoke-virtual {p2, p5}, Lse;->a(Ljava/lang/Class;)V

    return-void

    :cond_2
    const/16 p5, 0x19

    .line 3821
    invoke-virtual {p2, p5, p3}, Lse;->b(II)V

    .line 3822
    invoke-static {p4}, Lru;->a(I)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lrv;->N:Ljava/lang/String;

    const/16 p5, 0xb4

    invoke-virtual {p2, p5, p1, p3, p4}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    sget-object p1, Lrv;->o:Ljava/lang/String;

    const-string p3, "fieldType"

    const-string p4, "Ljava/lang/reflect/Type;"

    invoke-virtual {p2, p5, p1, p3, p4}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lse;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V
    .locals 7

    const/16 v0, 0xbb

    .line 616
    invoke-virtual {p0, v0, p1}, Lse;->a(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 617
    invoke-virtual {p0, v0}, Lse;->a(I)V

    .line 618
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0xb7

    const/4 v6, 0x0

    const-string v4, "<init>"

    const-string v5, "()V"

    move-object v1, p0

    move-object v3, p1

    .line 619
    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    const/4 v0, 0x1

    .line 622
    invoke-virtual {p0, v0}, Lse;->a(I)V

    const/16 v2, 0xb7

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")V"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "<init>"

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private a(Lse;Lxb$b;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/reflect/Constructor;Ljava/util/function/Supplier;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lse;",
            "Lxb$b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/reflect/Constructor;",
            "Ljava/util/function/Supplier;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v0, p7

    .line 2656
    iget-object v1, v7, Lxb$b;->a:Ljava/lang/Class;

    const/4 v9, 0x1

    if-nez v1, :cond_0

    move v2, v9

    goto :goto_0

    .line 2659
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    .line 2660
    :goto_0
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    move-object v11, p0

    iget-object v2, v11, Lxb;->h:Laba;

    invoke-virtual {v2, v1}, Laba;->a(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_1
    move-object v11, p0

    :goto_1
    move v12, v9

    goto :goto_2

    :cond_2
    move-object v11, p0

    :cond_3
    move v12, v10

    :goto_2
    const/16 v13, 0x19

    if-eqz v0, :cond_5

    if-eqz v12, :cond_5

    .line 2662
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 2678
    :cond_4
    invoke-static {v6, v8, v0}, Lxb;->a(Lse;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    move-object/from16 v14, p3

    goto :goto_5

    :cond_5
    :goto_3
    if-eqz p8, :cond_6

    .line 2664
    invoke-virtual {v6, v13, v10}, Lse;->b(II)V

    const/16 v0, 0xb4

    const-string v1, "creator"

    const-string v2, "Ljava/util/function/Supplier;"

    move-object/from16 v14, p3

    .line 2665
    invoke-virtual {v6, v0, v14, v1, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb9

    const/4 v5, 0x1

    const-string v2, "java/util/function/Supplier"

    const-string v3, "get"

    const-string v4, "()Ljava/lang/Object;"

    move-object/from16 v0, p1

    .line 2666
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    move-object/from16 v14, p3

    .line 2668
    invoke-virtual {v6, v13, v10}, Lse;->b(II)V

    .line 2669
    invoke-virtual {v6, v13, v9}, Lse;->b(II)V

    const/16 v0, 0x16

    move/from16 v1, p5

    .line 2670
    invoke-virtual {v6, v0, v1}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2671
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "features"

    const-string v4, "(J)J"

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "createInstance"

    const-string v4, "(J)Ljava/lang/Object;"

    move-object/from16 v2, p3

    .line 2672
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4
    if-eqz v12, :cond_7

    const/16 v0, 0xc0

    .line 2675
    invoke-virtual {v6, v0, v8}, Lse;->a(ILjava/lang/String;)V

    .line 2681
    :cond_7
    :goto_5
    iget-boolean v0, v7, Lxb$b;->f:Z

    if-eqz v0, :cond_8

    .line 2682
    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    .line 2684
    invoke-virtual {v6, v13, v9}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 2685
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "isInitStringFieldAsEmpty"

    const-string v4, "()Z"

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x99

    .line 2686
    invoke-virtual {v6, v0, v7}, Lse;->a(ILsc;)V

    const/16 v0, 0x59

    .line 2688
    invoke-virtual {v6, v0}, Lse;->a(I)V

    .line 2689
    invoke-virtual {v6, v13, v10}, Lse;->b(II)V

    const/16 v0, 0x5f

    .line 2690
    invoke-virtual {v6, v0}, Lse;->a(I)V

    const-string v3, "initStringFieldAsEmpty"

    const-string v4, "(Ljava/lang/Object;)V"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 2691
    invoke-virtual/range {v0 .. v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2692
    invoke-virtual {v6, v7}, Lse;->a(Lsc;)V

    :cond_8
    return-void
.end method

.method private a(Lsu;Ljava/lang/String;Lse;IIIZLjava/lang/reflect/Type;JLjava/lang/String;)V
    .locals 14

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v0, p5

    move-object/from16 v10, p11

    .line 3254
    new-instance v11, Lsc;

    invoke-direct {v11}, Lsc;-><init>()V

    const/16 v12, 0x19

    .line 3256
    invoke-virtual {v8, v12, v9}, Lse;->b(II)V

    .line 3257
    sget-object v2, Lrv;->R:Ljava/lang/String;

    const/16 v13, 0xb4

    invoke-virtual {v8, v13, v1, v10, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc7

    .line 3258
    invoke-virtual {v8, v2, v11}, Lse;->a(ILsc;)V

    .line 3260
    invoke-virtual {v8, v12, v9}, Lse;->b(II)V

    .line 3261
    invoke-virtual {v8, v12, v9}, Lse;->b(II)V

    .line 3262
    invoke-static/range {p6 .. p6}, Lru;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lrv;->N:Ljava/lang/String;

    invoke-virtual {v8, v13, v1, v2, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    invoke-virtual {v8, v12, v0}, Lse;->b(II)V

    .line 3264
    sget-object v4, Lrv;->o:Ljava/lang/String;

    sget-object v6, Lxb;->j:Ljava/lang/String;

    const/16 v3, 0xb6

    const-string v5, "getObjectReader"

    const/4 v7, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3265
    sget-object v2, Lrv;->R:Ljava/lang/String;

    const/16 v3, 0xb5

    invoke-virtual {v8, v3, v1, v10, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    invoke-virtual {v8, v11}, Lse;->a(Lsc;)V

    .line 3268
    invoke-virtual {v8, v12, v9}, Lse;->b(II)V

    .line 3269
    sget-object v2, Lrv;->R:Ljava/lang/String;

    invoke-virtual {v8, v13, v1, v10, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    invoke-virtual {v8, v12, v0}, Lse;->b(II)V

    move-object v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    .line 3272
    invoke-direct/range {v0 .. v5}, Lxb;->a(Ljava/lang/String;Lse;IILjava/lang/reflect/Type;)V

    move-object v0, p1

    .line 3273
    iget-object v0, v0, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lse;->a(Ljava/lang/String;)V

    move-wide/from16 v0, p9

    .line 3274
    invoke-virtual {v8, v0, v1}, Lse;->a(J)V

    .line 3275
    sget-object v0, Lrv;->q:Ljava/lang/String;

    if-eqz p7, :cond_0

    const-string v1, "readJSONBObject"

    goto :goto_0

    :cond_0
    const-string v1, "readObject"

    .line 3277
    :goto_0
    sget-object v2, Lxb;->m:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0xb9

    move-object/from16 p1, p3

    move/from16 p2, v4

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move/from16 p6, v3

    .line 3275
    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lsu;Ljava/lang/String;Lse;IIIZLjava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;)V
    .locals 30

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v0, p5

    move-object/from16 v10, p12

    .line 3295
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    .line 3297
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    const/16 v12, 0x22

    const/4 v13, 0x4

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    move v3, v6

    move v4, v3

    move v5, v4

    .line 3300
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 3301
    aget-object v7, v2, v3

    check-cast v7, Ljava/lang/Enum;

    .line 3302
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    .line 3303
    array-length v15, v14

    if-nez v3, :cond_0

    move v4, v15

    move v5, v4

    goto :goto_1

    .line 3308
    :cond_0
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3309
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3312
    :goto_1
    new-array v15, v13, [B

    aput-byte v12, v15, v6

    .line 3314
    array-length v13, v14

    const/4 v12, 0x2

    if-ne v13, v12, :cond_1

    const/4 v13, 0x1

    .line 3315
    invoke-static {v14, v6, v15, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v12, 0x22

    const/4 v14, 0x3

    aput-byte v12, v15, v14

    move-object/from16 p9, v2

    move v12, v14

    goto :goto_2

    :cond_1
    move-object/from16 p9, v2

    const/4 v12, 0x3

    const/4 v13, 0x1

    .line 3317
    array-length v2, v14

    if-lt v2, v12, :cond_2

    .line 3318
    invoke-static {v14, v6, v15, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3320
    :cond_2
    :goto_2
    sget-object v2, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v13, Labf;->b:J

    invoke-virtual {v2, v15, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    .line 3322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-nez v13, :cond_3

    .line 3324
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3327
    :cond_3
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p9

    const/16 v12, 0x22

    const/4 v13, 0x4

    goto :goto_0

    :cond_4
    const/4 v12, 0x3

    move v13, v4

    move v14, v5

    goto :goto_3

    :cond_5
    const/4 v12, 0x3

    move v13, v6

    move v14, v13

    .line 3331
    :goto_3
    new-instance v15, Lsc;

    invoke-direct {v15}, Lsc;-><init>()V

    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    .line 3333
    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    const/16 v4, 0x19

    .line 3335
    invoke-virtual {v8, v4, v9}, Lse;->b(II)V

    .line 3336
    sget-object v2, Lrv;->R:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-virtual {v8, v3, v1, v10, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc7

    .line 3337
    invoke-virtual {v8, v2, v5}, Lse;->a(ILsc;)V

    .line 3339
    invoke-virtual {v8, v4, v9}, Lse;->b(II)V

    .line 3340
    invoke-virtual {v8, v4, v9}, Lse;->b(II)V

    .line 3341
    invoke-static/range {p6 .. p6}, Lru;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lrv;->N:Ljava/lang/String;

    invoke-virtual {v8, v3, v1, v2, v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    invoke-virtual {v8, v4, v0}, Lse;->b(II)V

    const/16 v6, 0xb6

    .line 3343
    sget-object v20, Lrv;->o:Ljava/lang/String;

    sget-object v21, Lxb;->j:Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "getObjectReader"

    move-object/from16 v2, p3

    move v12, v3

    move v3, v6

    move v6, v4

    move-object/from16 v4, v20

    move-object v12, v5

    move-object/from16 v5, v23

    move-object/from16 v6, v21

    move-object/from16 v26, v7

    move/from16 v7, v22

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0xb5

    .line 3344
    sget-object v3, Lrv;->R:Ljava/lang/String;

    invoke-virtual {v8, v2, v1, v10, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    invoke-virtual {v8, v12}, Lse;->a(Lsc;)V

    const/16 v12, 0x19

    .line 3347
    invoke-virtual {v8, v12, v9}, Lse;->b(II)V

    .line 3348
    sget-object v2, Lrv;->R:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-virtual {v8, v3, v1, v10, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc1

    .line 3349
    const-class v3, Lxt;

    invoke-static {v3}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lse;->a(ILjava/lang/String;)V

    const/16 v7, 0x99

    .line 3350
    invoke-virtual {v8, v7, v15}, Lse;->a(ILsc;)V

    const/4 v2, 0x2

    if-lt v13, v2, :cond_b

    const/16 v2, 0xb

    if-gt v14, v2, :cond_b

    .line 3353
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v2

    new-array v13, v2, [I

    .line 3354
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v2

    new-array v14, v2, [Lsc;

    .line 3356
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 3357
    :goto_4
    array-length v4, v14

    if-ge v3, v4, :cond_6

    .line 3358
    new-instance v4, Lsc;

    invoke-direct {v4}, Lsc;-><init>()V

    aput-object v4, v14, v3

    .line 3359
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3363
    :cond_6
    invoke-virtual {v8, v12, v0}, Lse;->b(II)V

    const/16 v3, 0xb6

    .line 3364
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/16 v21, 0x0

    const-string v5, "getRawInt"

    const-string v6, "()I"

    move-object/from16 v2, p3

    move/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3365
    invoke-virtual {v8, v15, v13, v14}, Lse;->a(Lsc;[I[Lsc;)V

    const/4 v7, 0x0

    .line 3367
    :goto_5
    array-length v2, v14

    if-ge v7, v2, :cond_b

    .line 3368
    aget-object v2, v14, v7

    invoke-virtual {v8, v2}, Lse;->a(Lsc;)V

    .line 3370
    aget v2, v13, v7

    .line 3371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    const/4 v5, 0x0

    .line 3372
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_a

    const/4 v2, 0x0

    if-lez v5, :cond_7

    .line 3375
    new-instance v2, Lsc;

    invoke-direct {v2}, Lsc;-><init>()V

    :cond_7
    move-object v3, v2

    .line 3378
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/Enum;

    .line 3379
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 3380
    array-length v4, v2

    const-wide/16 v22, 0x3

    const/16 v12, 0x8

    move-object/from16 v24, v3

    const/4 v3, 0x7

    packed-switch v4, :pswitch_data_0

    .line 3459
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldNameLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3450
    :pswitch_0
    new-array v3, v12, [B

    move/from16 v25, v7

    const/4 v4, 0x3

    const/4 v7, 0x0

    .line 3451
    invoke-static {v2, v4, v3, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3452
    sget-object v2, Labf;->a:Lsun/misc/Unsafe;

    move/from16 v27, v5

    sget-wide v4, Labf;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    const/16 v4, 0x19

    .line 3453
    invoke-virtual {v8, v4, v0}, Lse;->b(II)V

    .line 3454
    invoke-virtual {v8, v2, v3}, Lse;->a(J)V

    const/16 v3, 0xb6

    .line 3455
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v5, "nextIfValue4Match11"

    const-string v23, "(J)Z"

    move-object/from16 v2, p3

    move-object/from16 v28, v24

    move/from16 v24, v27

    move-object/from16 v27, v6

    move-object/from16 v6, v23

    move-object/from16 p9, v11

    move v11, v7

    move v7, v12

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v7, v28

    const/4 v12, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x22

    const/16 v18, 0x4

    const/16 v29, 0x3

    goto/16 :goto_a

    :pswitch_1
    move-object/from16 v27, v6

    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v28, v24

    const/4 v11, 0x0

    move/from16 v24, v5

    .line 3440
    new-array v4, v12, [B

    const/4 v12, 0x3

    .line 3441
    invoke-static {v2, v12, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x22

    aput-byte v2, v4, v3

    .line 3443
    sget-object v2, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->b:J

    invoke-virtual {v2, v4, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    const/16 v4, 0x19

    .line 3444
    invoke-virtual {v8, v4, v0}, Lse;->b(II)V

    .line 3445
    invoke-virtual {v8, v2, v3}, Lse;->a(J)V

    const/16 v3, 0xb6

    .line 3446
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "nextIfValue4Match10"

    const-string v6, "(J)Z"

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move/from16 v29, v12

    goto/16 :goto_7

    :pswitch_2
    move-object/from16 v27, v6

    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v28, v24

    const/4 v11, 0x0

    const/16 v29, 0x3

    move/from16 v24, v5

    .line 3431
    sget-object v4, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->b:J

    add-long v5, v5, v22

    invoke-virtual {v4, v2, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    const/16 v5, 0x19

    .line 3432
    invoke-virtual {v8, v5, v0}, Lse;->b(II)V

    .line 3433
    invoke-virtual {v8, v4}, Lse;->b(I)V

    .line 3434
    aget-byte v3, v2, v3

    invoke-virtual {v8, v3}, Lse;->b(I)V

    .line 3435
    aget-byte v2, v2, v12

    invoke-virtual {v8, v2}, Lse;->b(I)V

    const/16 v3, 0xb6

    .line 3436
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "nextIfValue4Match9"

    const-string v6, "(IBB)Z"

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    :pswitch_3
    move-object/from16 v27, v6

    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v28, v24

    const/4 v11, 0x0

    const/16 v29, 0x3

    move/from16 v24, v5

    .line 3423
    sget-object v4, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->b:J

    add-long v5, v5, v22

    invoke-virtual {v4, v2, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    const/16 v5, 0x19

    .line 3424
    invoke-virtual {v8, v5, v0}, Lse;->b(II)V

    .line 3425
    invoke-virtual {v8, v4}, Lse;->b(I)V

    .line 3426
    aget-byte v2, v2, v3

    invoke-virtual {v8, v2}, Lse;->b(I)V

    const/16 v3, 0xb6

    .line 3427
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "nextIfValue4Match8"

    const-string v6, "(IB)Z"

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    :pswitch_4
    move-object/from16 v27, v6

    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v28, v24

    const/4 v11, 0x0

    const/16 v29, 0x3

    move/from16 v24, v5

    .line 3416
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v22

    invoke-virtual {v3, v2, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    const/16 v3, 0x19

    .line 3417
    invoke-virtual {v8, v3, v0}, Lse;->b(II)V

    .line 3418
    invoke-virtual {v8, v2}, Lse;->b(I)V

    const/16 v3, 0xb6

    .line 3419
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "nextIfValue4Match7"

    const-string v6, "(I)Z"

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_7
    move-object/from16 v7, v28

    const/4 v12, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x22

    goto :goto_8

    :pswitch_5
    move-object/from16 v27, v6

    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v28, v24

    const/4 v3, 0x4

    const/4 v11, 0x0

    const/16 v29, 0x3

    move/from16 v24, v5

    .line 3404
    new-array v4, v3, [B

    .line 3405
    aget-byte v5, v2, v29

    aput-byte v5, v4, v11

    .line 3406
    aget-byte v5, v2, v3

    const/4 v12, 0x1

    aput-byte v5, v4, v12

    const/4 v3, 0x5

    .line 3407
    aget-byte v2, v2, v3

    const/16 v16, 0x2

    aput-byte v2, v4, v16

    const/16 v17, 0x22

    aput-byte v17, v4, v29

    .line 3409
    sget-object v2, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->b:J

    invoke-virtual {v2, v4, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    const/16 v3, 0x19

    .line 3410
    invoke-virtual {v8, v3, v0}, Lse;->b(II)V

    .line 3411
    invoke-virtual {v8, v2}, Lse;->b(I)V

    const/16 v3, 0xb6

    .line 3412
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "nextIfValue4Match6"

    const-string v6, "(I)Z"

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v7, v28

    :goto_8
    const/16 v18, 0x4

    goto/16 :goto_a

    :pswitch_6
    move-object/from16 v27, v6

    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v28, v24

    const/16 v3, 0x19

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x22

    const/16 v29, 0x3

    move/from16 v24, v5

    .line 3397
    invoke-virtual {v8, v3, v0}, Lse;->b(II)V

    .line 3398
    aget-byte v3, v2, v29

    invoke-virtual {v8, v3}, Lse;->b(I)V

    const/16 v18, 0x4

    .line 3399
    aget-byte v2, v2, v18

    invoke-virtual {v8, v2}, Lse;->b(I)V

    const/16 v3, 0xb6

    .line 3400
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "nextIfValue4Match5"

    const-string v6, "(BB)Z"

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_9

    :pswitch_7
    move-object/from16 v27, v6

    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v28, v24

    const/16 v3, 0x19

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x22

    const/16 v18, 0x4

    const/16 v29, 0x3

    move/from16 v24, v5

    .line 3391
    invoke-virtual {v8, v3, v0}, Lse;->b(II)V

    .line 3392
    aget-byte v2, v2, v29

    invoke-virtual {v8, v2}, Lse;->b(I)V

    const/16 v3, 0xb6

    .line 3393
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "nextIfValue4Match4"

    const-string v6, "(B)Z"

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :pswitch_8
    move-object/from16 v27, v6

    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v28, v24

    const/16 v2, 0x19

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x22

    const/16 v18, 0x4

    const/16 v29, 0x3

    move/from16 v24, v5

    .line 3387
    invoke-virtual {v8, v2, v0}, Lse;->b(II)V

    const/16 v3, 0xb6

    .line 3388
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "nextIfValue4Match3"

    const-string v6, "()Z"

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :pswitch_9
    move-object/from16 v27, v6

    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v28, v24

    const/16 v2, 0x19

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x22

    const/16 v18, 0x4

    const/16 v29, 0x3

    move/from16 v24, v5

    .line 3383
    invoke-virtual {v8, v2, v0}, Lse;->b(II)V

    const/16 v3, 0xb6

    .line 3384
    sget-object v4, Lrv;->p:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "nextIfValue4Match2"

    const-string v6, "()Z"

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9
    move-object/from16 v7, v28

    :goto_a
    if-eqz v7, :cond_8

    move-object v2, v7

    goto :goto_b

    :cond_8
    move-object v2, v15

    :goto_b
    const/16 v6, 0x99

    .line 3462
    invoke-virtual {v8, v6, v2}, Lse;->a(ILsc;)V

    const/16 v2, 0x19

    .line 3464
    invoke-virtual {v8, v2, v9}, Lse;->b(II)V

    .line 3465
    sget-object v2, Lrv;->R:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-virtual {v8, v3, v1, v10, v2}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc0

    .line 3466
    const-class v3, Lxt;

    invoke-static {v3}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lse;->a(ILjava/lang/String;)V

    .line 3467
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v8, v2}, Lse;->b(I)V

    const/16 v3, 0xb6

    .line 3468
    const-class v2, Lxt;

    invoke-static {v2}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/16 v19, 0x0

    const-string v5, "getEnumByOrdinal"

    const-string v21, "(I)Ljava/lang/Enum;"

    move-object/from16 v2, p3

    move/from16 v22, v6

    move-object/from16 v6, v21

    move-object v11, v7

    move/from16 v7, v19

    invoke-virtual/range {v2 .. v7}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v6, v26

    const/16 v2, 0xa7

    .line 3469
    invoke-virtual {v8, v2, v6}, Lse;->a(ILsc;)V

    if-eqz v11, :cond_9

    .line 3472
    invoke-virtual {v8, v11}, Lse;->a(Lsc;)V

    :cond_9
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v11, p9

    move-object/from16 v26, v6

    move/from16 v7, v25

    move-object/from16 v6, v27

    const/16 v12, 0x19

    goto/16 :goto_6

    :cond_a
    move/from16 v25, v7

    move-object/from16 p9, v11

    move-object/from16 v6, v26

    const/16 v2, 0xa7

    const/4 v12, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x22

    const/16 v18, 0x4

    const/16 v22, 0x99

    const/16 v29, 0x3

    .line 3476
    invoke-virtual {v8, v2, v15}, Lse;->a(ILsc;)V

    add-int/lit8 v7, v25, 0x1

    const/16 v12, 0x19

    goto/16 :goto_5

    :cond_b
    move-object/from16 v6, v26

    .line 3480
    invoke-virtual {v8, v15}, Lse;->a(Lsc;)V

    const/16 v2, 0x19

    .line 3482
    invoke-virtual {v8, v2, v9}, Lse;->b(II)V

    .line 3483
    sget-object v3, Lrv;->R:Ljava/lang/String;

    const/16 v4, 0xb4

    invoke-virtual {v8, v4, v1, v10, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    invoke-virtual {v8, v2, v0}, Lse;->b(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    .line 3485
    invoke-direct/range {v0 .. v5}, Lxb;->a(Ljava/lang/String;Lse;IILjava/lang/reflect/Type;)V

    move-object/from16 v0, p1

    .line 3486
    iget-object v0, v0, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lse;->a(Ljava/lang/String;)V

    move-wide/from16 v0, p10

    .line 3487
    invoke-virtual {v8, v0, v1}, Lse;->a(J)V

    const/16 v0, 0xb9

    .line 3488
    sget-object v1, Lrv;->q:Ljava/lang/String;

    if-eqz p7, :cond_c

    const-string v2, "readJSONBObject"

    goto :goto_c

    :cond_c
    const-string v2, "readObject"

    .line 3490
    :goto_c
    sget-object v3, Lxb;->m:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 p4, p3

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p7, v2

    move-object/from16 p8, v3

    move/from16 p9, v4

    .line 3488
    invoke-virtual/range {p4 .. p9}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3494
    invoke-virtual {v8, v6}, Lse;->a(Lsc;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

.method private a(Lxb$b;Ljava/lang/reflect/Constructor;JLjava/lang/String;[Lsu;Lry;Ljava/lang/String;Lwx;)V
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxb$b;",
            "Ljava/lang/reflect/Constructor;",
            "J",
            "Ljava/lang/String;",
            "[",
            "Lsu;",
            "Lry;",
            "Ljava/lang/String;",
            "Lwx;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p6

    move-object/from16 v15, p8

    move-object/from16 v12, p1

    move-object/from16 v11, p9

    .line 910
    iget-object v9, v12, Lxb$b;->a:Ljava/lang/Class;

    .line 911
    sget-object v1, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v1, p3, v1

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    const/4 v14, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_0

    move/from16 v21, v13

    goto :goto_0

    :cond_0
    move/from16 v21, v14

    .line 913
    :goto_0
    sget-object v1, Lxb;->m:Ljava/lang/String;

    const/16 v2, 0x800

    const-string v3, "readJSONBObject"

    move-object/from16 v4, p7

    invoke-virtual {v4, v13, v3, v1, v2}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v10

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/16 v8, 0xf

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object v3, v10

    .line 933
    invoke-direct/range {v1 .. v8}, Lxb;->a(Ljava/lang/String;Lse;IIIII)V

    .line 936
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 939
    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    const/16 v8, 0x19

    .line 940
    invoke-virtual {v10, v8, v13}, Lse;->b(II)V

    const/16 v23, 0xb6

    .line 941
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const/16 v27, 0x0

    const-string v25, "nextIfNull"

    const-string v26, "()Z"

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x99

    .line 942
    invoke-virtual {v10, v7, v1}, Lse;->a(ILsc;)V

    .line 943
    invoke-virtual {v10, v13}, Lse;->a(I)V

    const/16 v6, 0xb0

    .line 944
    invoke-virtual {v10, v6}, Lse;->a(I)V

    .line 945
    invoke-virtual {v10, v1}, Lse;->a(Lsc;)V

    if-eqz v9, :cond_1

    .line 948
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 949
    invoke-virtual {v10, v8, v13}, Lse;->b(II)V

    .line 950
    invoke-virtual {v10, v8, v14}, Lse;->b(II)V

    const/16 v1, 0xb4

    const-string v2, "objectClass"

    const-string v3, "Ljava/lang/Class;"

    .line 951
    invoke-virtual {v10, v1, v15, v2, v3}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0xb6

    .line 952
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const/16 v27, 0x0

    const-string v25, "errorOnNoneSerializable"

    const-string v26, "(Ljava/lang/Class;)V"

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 955
    :cond_1
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    .line 959
    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    .line 960
    invoke-virtual {v10, v8, v13}, Lse;->b(II)V

    const/16 v23, 0xb6

    .line 961
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const/16 v27, 0x0

    const-string v25, "isArray"

    const-string v26, "()Z"

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 962
    invoke-virtual {v10, v7, v9}, Lse;->a(ILsc;)V

    .line 964
    invoke-virtual {v10, v8, v13}, Lse;->b(II)V

    .line 965
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const-string v25, "isSupportBeanArray"

    const-string v26, "()Z"

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 966
    invoke-virtual {v10, v7, v5}, Lse;->a(ILsc;)V

    const/16 v16, 0x4

    .line 968
    iget-object v4, v11, Lwx;->Z:Ljava/util/function/Supplier;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    move-object/from16 v4, p8

    move-object/from16 v29, v5

    move-object/from16 v5, p5

    move/from16 v6, v16

    move/from16 v7, v21

    move v14, v8

    move-object/from16 v8, p2

    move-object/from16 v30, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lxb;->a(Lse;Lxb$b;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/reflect/Constructor;Ljava/util/function/Supplier;)V

    const/16 v6, 0x3a

    const/4 v5, 0x6

    .line 969
    invoke-virtual {v10, v6, v5}, Lse;->b(II)V

    .line 971
    new-instance v4, Lsc;

    invoke-direct {v4}, Lsc;-><init>()V

    new-instance v2, Lsc;

    invoke-direct {v2}, Lsc;-><init>()V

    .line 973
    invoke-virtual {v10, v14, v13}, Lse;->b(II)V

    .line 974
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const-string v25, "startArray"

    const-string v26, "()I"

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x59

    .line 975
    invoke-virtual {v10, v1}, Lse;->a(I)V

    const/4 v1, 0x7

    const/16 v9, 0x36

    .line 976
    invoke-virtual {v10, v9, v1}, Lse;->b(II)V

    .line 977
    array-length v1, v0

    invoke-virtual {v10, v1}, Lse;->b(I)V

    const/16 v1, 0xa0

    .line 978
    invoke-virtual {v10, v1, v2}, Lse;->a(ILsc;)V

    const/16 v1, 0x10

    move/from16 v18, v1

    const/4 v8, 0x0

    .line 980
    :goto_1
    array-length v3, v0

    if-ge v8, v3, :cond_2

    .line 981
    aget-object v3, v0, v8

    const/4 v7, 0x0

    const/16 v17, 0x1

    move/from16 v22, v8

    move/from16 v8, v17

    const/16 v17, 0x6

    move/from16 v9, v17

    const/16 v17, 0x4

    move-object/from16 p7, v10

    move/from16 v10, v17

    const/16 v17, 0xc

    move/from16 v13, v17

    const/16 v17, 0xd

    move/from16 v14, v17

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v32, v2

    move-object/from16 v2, p1

    move-object/from16 v33, v4

    move/from16 v4, v21

    move-object/from16 v5, p8

    move-object/from16 v6, p7

    move/from16 v11, v18

    move-object/from16 v12, v28

    move/from16 v15, v22

    move-object/from16 v18, p5

    .line 982
    invoke-direct/range {v1 .. v18}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v18

    add-int/lit8 v8, v22, 0x1

    move-object/from16 v12, p1

    move-object/from16 v10, p7

    move-object/from16 v15, p8

    move-object/from16 v11, p9

    move-object/from16 v2, v32

    move-object/from16 v4, v33

    const/16 v1, 0x10

    const/4 v5, 0x6

    const/16 v6, 0x3a

    const/16 v9, 0x36

    const/4 v13, 0x1

    const/16 v14, 0x19

    goto :goto_1

    :cond_2
    move-object/from16 v32, v2

    move-object/from16 v33, v4

    move-object/from16 p7, v10

    const/16 v12, 0xa7

    move-object/from16 v11, p7

    move-object/from16 v1, v33

    .line 1003
    invoke-virtual {v11, v12, v1}, Lse;->a(ILsc;)V

    .line 1005
    invoke-virtual {v11, v2}, Lse;->a(Lsc;)V

    const/16 v13, 0x19

    const/4 v14, 0x0

    .line 1006
    invoke-virtual {v11, v13, v14}, Lse;->b(II)V

    const/4 v10, 0x1

    .line 1007
    invoke-virtual {v11, v13, v10}, Lse;->b(II)V

    const/4 v15, 0x6

    .line 1008
    invoke-virtual {v11, v13, v15}, Lse;->b(II)V

    const/16 v2, 0x15

    const/4 v3, 0x7

    .line 1009
    invoke-virtual {v11, v2, v3}, Lse;->b(II)V

    const/16 v23, 0xb6

    .line 1010
    sget-object v24, Lrv;->r:Ljava/lang/String;

    sget-object v26, Lxb;->u:Ljava/lang/String;

    const/16 v27, 0x0

    const-string v25, "readArrayMappingJSONBObject0"

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1012
    invoke-virtual {v11, v1}, Lse;->a(Lsc;)V

    .line 1014
    invoke-virtual {v11, v13, v15}, Lse;->b(II)V

    const/16 v9, 0xb0

    .line 1015
    invoke-virtual {v11, v9}, Lse;->a(I)V

    move-object/from16 v1, v29

    .line 1017
    invoke-virtual {v11, v1}, Lse;->a(Lsc;)V

    move-object/from16 v1, v30

    .line 1020
    invoke-virtual {v11, v1}, Lse;->a(Lsc;)V

    const/4 v6, 0x4

    move-object/from16 v8, p9

    .line 1022
    iget-object v7, v8, Lwx;->Z:Ljava/util/function/Supplier;

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    move-object/from16 v5, p5

    move-object/from16 v16, v7

    move/from16 v7, v21

    move-object v12, v8

    move-object/from16 v8, p2

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lxb;->a(Lse;Lxb$b;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/reflect/Constructor;Ljava/util/function/Supplier;)V

    const/16 v9, 0x3a

    .line 1023
    invoke-virtual {v11, v9, v15}, Lse;->b(II)V

    .line 1025
    invoke-virtual {v11, v13, v10}, Lse;->b(II)V

    .line 1026
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const-string v25, "nextIfObjectStart"

    const-string v26, "()Z"

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x57

    .line 1027
    invoke-virtual {v11, v1}, Lse;->a(I)V

    .line 1029
    iget-object v8, v12, Lwx;->Z:Ljava/util/function/Supplier;

    move-object/from16 v1, p0

    move-object/from16 v16, v8

    move-object/from16 v8, p2

    move v14, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lxb;->a(Lse;Lxb$b;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/reflect/Constructor;Ljava/util/function/Supplier;)V

    .line 1030
    invoke-virtual {v11, v14, v15}, Lse;->b(II)V

    .line 1033
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    const/4 v1, 0x3

    .line 1034
    invoke-virtual {v11, v1}, Lse;->a(I)V

    const/16 v1, 0x8

    const/16 v6, 0x36

    .line 1035
    invoke-virtual {v11, v6, v1}, Lse;->b(II)V

    .line 1037
    invoke-virtual {v11, v9}, Lse;->a(Lsc;)V

    .line 1039
    invoke-virtual {v11, v13, v10}, Lse;->b(II)V

    .line 1040
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const-string v25, "nextIfObjectEnd"

    const-string v26, "()Z"

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x9a

    .line 1041
    invoke-virtual {v11, v5, v8}, Lse;->a(ILsc;)V

    .line 1043
    invoke-virtual {v11, v13, v10}, Lse;->b(II)V

    .line 1044
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const-string v25, "readFieldNameHashCode"

    const-string v26, "()J"

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x5c

    .line 1045
    invoke-virtual {v11, v1}, Lse;->a(I)V

    const/16 v1, 0x37

    const/16 v4, 0x9

    .line 1046
    invoke-virtual {v11, v1, v4}, Lse;->b(II)V

    .line 1047
    invoke-virtual {v11, v4}, Lse;->a(I)V

    const/16 v3, 0x94

    .line 1048
    invoke-virtual {v11, v3}, Lse;->a(I)V

    const/16 v2, 0x99

    .line 1049
    invoke-virtual {v11, v2, v7}, Lse;->a(ILsc;)V

    .line 1051
    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    move-object/from16 p2, v9

    const/16 v9, 0x16

    .line 1052
    invoke-virtual {v11, v9, v4}, Lse;->b(II)V

    move-object/from16 v16, v7

    const/4 v7, 0x0

    .line 1053
    invoke-virtual {v11, v13, v7}, Lse;->b(II)V

    const/16 v6, 0xb4

    const-string v14, "typeKeyHashCode"

    const-string v15, "J"

    move-object/from16 v10, p8

    .line 1054
    invoke-virtual {v11, v6, v10, v14, v15}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v11, v3}, Lse;->a(I)V

    .line 1056
    invoke-virtual {v11, v5, v1}, Lse;->a(ILsc;)V

    .line 1058
    invoke-virtual {v11, v9, v4}, Lse;->b(II)V

    .line 1059
    invoke-virtual {v11, v4}, Lse;->a(I)V

    .line 1060
    invoke-virtual {v11, v3}, Lse;->a(I)V

    .line 1061
    invoke-virtual {v11, v2, v1}, Lse;->a(ILsc;)V

    .line 1064
    invoke-virtual {v11, v13, v7}, Lse;->b(II)V

    const/4 v14, 0x1

    .line 1065
    invoke-virtual {v11, v13, v14}, Lse;->b(II)V

    const/16 v6, 0xb6

    .line 1066
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrv;->P:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")Ljava/lang/Object;"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const-string v22, "autoType"

    move-object v2, v1

    move-object v1, v11

    move-object v7, v2

    move v2, v6

    move v6, v3

    move-object/from16 v3, p8

    move v14, v4

    move-object/from16 v4, v22

    move v13, v5

    move-object v5, v15

    move v10, v6

    const/16 v15, 0x36

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x3a

    const/4 v2, 0x6

    .line 1067
    invoke-virtual {v11, v1, v2}, Lse;->b(II)V

    const/16 v6, 0xa7

    .line 1068
    invoke-virtual {v11, v6, v8}, Lse;->a(ILsc;)V

    .line 1070
    invoke-virtual {v11, v7}, Lse;->a(Lsc;)V

    .line 1073
    array-length v3, v0

    if-le v3, v2, :cond_9

    .line 1075
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    const/4 v3, 0x0

    .line 1077
    :goto_2
    iget-object v4, v12, Lwx;->O:[J

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 1078
    iget-object v4, v12, Lwx;->O:[J

    aget-wide v22, v4, v3

    const/16 v4, 0x20

    ushr-long v24, v22, v4

    xor-long v1, v22, v24

    long-to-int v1, v1

    .line 1080
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, L-$$Lambda$xb$iSA3zUjGBi1OfKfRXukla9523vY;->INSTANCE:L-$$Lambda$xb$iSA3zUjGBi1OfKfRXukla9523vY;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1081
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x3a

    const/4 v2, 0x6

    goto :goto_2

    .line 1083
    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v1

    new-array v4, v1, [I

    .line 1086
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v7, v2, 0x1

    .line 1087
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v2

    move v2, v7

    goto :goto_3

    .line 1090
    :cond_4
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1093
    invoke-virtual {v11, v9, v14}, Lse;->b(II)V

    .line 1094
    invoke-virtual {v11, v9, v14}, Lse;->b(II)V

    const/16 v1, 0x20

    const/16 v2, 0x10

    .line 1095
    invoke-virtual {v11, v2, v1}, Lse;->b(II)V

    const/16 v1, 0x7d

    .line 1096
    invoke-virtual {v11, v1}, Lse;->a(I)V

    const/16 v1, 0x83

    .line 1097
    invoke-virtual {v11, v1}, Lse;->a(I)V

    const/16 v1, 0x88

    .line 1098
    invoke-virtual {v11, v1}, Lse;->a(I)V

    const/16 v1, 0xb

    .line 1099
    invoke-virtual {v11, v15, v1}, Lse;->b(II)V

    .line 1101
    new-instance v2, Lsc;

    invoke-direct {v2}, Lsc;-><init>()V

    .line 1102
    array-length v1, v4

    new-array v1, v1, [Lsc;

    const/4 v3, 0x0

    .line 1103
    :goto_4
    array-length v7, v1

    if-ge v3, v7, :cond_5

    .line 1104
    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    aput-object v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const/16 v3, 0x15

    const/16 v7, 0xb

    .line 1107
    invoke-virtual {v11, v3, v7}, Lse;->b(II)V

    .line 1108
    invoke-virtual {v11, v2, v4, v1}, Lse;->a(Lsc;[I[Lsc;)V

    const/4 v7, 0x0

    .line 1110
    :goto_5
    array-length v3, v1

    if-ge v7, v3, :cond_7

    .line 1111
    aget-object v3, v1, v7

    invoke-virtual {v11, v3}, Lse;->a(Lsc;)V

    .line 1113
    aget v3, v4, v7

    .line 1114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1115
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move/from16 v17, v7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1116
    invoke-virtual {v11, v9, v14}, Lse;->b(II)V

    .line 1117
    invoke-virtual {v11, v6, v7}, Lse;->a(J)V

    .line 1118
    invoke-virtual {v11, v10}, Lse;->a(I)V

    .line 1119
    invoke-virtual {v11, v13, v2}, Lse;->a(ILsc;)V

    .line 1121
    iget-object v3, v12, Lwx;->O:[J

    invoke-static {v3, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 1122
    iget-object v6, v12, Lwx;->P:[S

    aget-short v3, v6, v3

    const/4 v6, 0x6

    move v15, v3

    .line 1124
    aget-object v3, v0, v3

    const/4 v7, 0x0

    move-object/from16 v34, v16

    move/from16 v31, v17

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v35, v8

    move/from16 v8, v17

    const/16 v17, 0x6

    move-object/from16 v36, p2

    move/from16 v9, v17

    const/16 v17, 0x4

    move/from16 v10, v17

    const/16 v17, 0xc

    move/from16 v13, v17

    const/16 v17, 0xd

    move/from16 v14, v17

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v23, v1

    move-object/from16 v1, p0

    move-object/from16 v37, v2

    move-object/from16 v2, p1

    move-object/from16 v24, v4

    move/from16 v4, v21

    move-object/from16 v25, v5

    move-object/from16 v5, p8

    const/16 v26, 0xa7

    move-object v6, v11

    move-object/from16 v38, v11

    move/from16 v11, v18

    move-object/from16 v12, v28

    move-object/from16 v18, p5

    .line 1126
    invoke-direct/range {v1 .. v18}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v18

    move-object/from16 v12, v34

    move-object/from16 v15, v38

    const/16 v11, 0xa7

    .line 1145
    invoke-virtual {v15, v11, v12}, Lse;->a(ILsc;)V

    move v6, v11

    move-object/from16 v16, v12

    move-object v11, v15

    move-object/from16 v1, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move/from16 v7, v31

    move-object/from16 v8, v35

    move-object/from16 v2, v37

    const/16 v9, 0x16

    const/16 v10, 0x94

    const/16 v13, 0x9a

    const/16 v14, 0x9

    move-object/from16 v12, p9

    goto/16 :goto_6

    :cond_6
    move-object/from16 v36, p2

    move-object/from16 v23, v1

    move-object/from16 v37, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v31, v7

    move-object/from16 v35, v8

    move-object v15, v11

    move-object/from16 v12, v16

    move v11, v6

    .line 1148
    invoke-virtual {v15, v11, v12}, Lse;->a(ILsc;)V

    add-int/lit8 v7, v31, 0x1

    move-object v11, v15

    const/16 v9, 0x16

    const/16 v10, 0x94

    const/16 v13, 0x9a

    const/16 v14, 0x9

    move-object/from16 v12, p9

    goto/16 :goto_5

    :cond_7
    move-object/from16 v36, p2

    move-object v1, v2

    move-object/from16 v35, v8

    move-object v15, v11

    move-object/from16 v12, v16

    move v11, v6

    .line 1152
    invoke-virtual {v15, v1}, Lse;->a(Lsc;)V

    .line 1154
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    .line 1156
    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v1, p3, v1

    cmp-long v1, v1, v19

    if-nez v1, :cond_8

    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 1157
    invoke-virtual {v15, v5, v6}, Lse;->b(II)V

    const/4 v1, 0x4

    const/16 v4, 0x16

    .line 1158
    invoke-virtual {v15, v4, v1}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 1159
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "isSupportSmartMatch"

    const-string v7, "(J)Z"

    move-object/from16 p1, v15

    move/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v7

    move/from16 p6, v3

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x99

    .line 1160
    invoke-virtual {v15, v2, v0}, Lse;->a(ILsc;)V

    goto :goto_7

    :cond_8
    const/16 v5, 0x19

    const/4 v6, 0x1

    :goto_7
    const/4 v1, 0x0

    .line 1163
    invoke-virtual {v15, v5, v1}, Lse;->b(II)V

    .line 1164
    invoke-virtual {v15, v5, v6}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 1165
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "getNameHashCodeLCase"

    const-string v8, "()J"

    move-object/from16 p1, v15

    move/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0xb9

    .line 1166
    sget-object v3, Lrv;->q:Ljava/lang/String;

    sget-object v4, Lxb;->n:Ljava/lang/String;

    const/4 v7, 0x1

    const-string v8, "getFieldReaderLCase"

    move/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v8

    move-object/from16 p5, v4

    move/from16 p6, v7

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x59

    .line 1167
    invoke-virtual {v15, v2}, Lse;->a(I)V

    const/16 v2, 0xe

    const/16 v3, 0x3a

    .line 1168
    invoke-virtual {v15, v3, v2}, Lse;->b(II)V

    const/16 v2, 0xc6

    .line 1169
    invoke-virtual {v15, v2, v0}, Lse;->a(ILsc;)V

    const/16 v2, 0xe

    .line 1171
    invoke-virtual {v15, v5, v2}, Lse;->b(II)V

    .line 1172
    invoke-virtual {v15, v5, v6}, Lse;->b(II)V

    const/4 v14, 0x6

    .line 1173
    invoke-virtual {v15, v5, v14}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 1174
    sget-object v3, Lrv;->o:Ljava/lang/String;

    sget-object v4, Lxb;->o:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "readFieldValueJSONB"

    move/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v8

    move-object/from16 p5, v4

    move/from16 p6, v7

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1175
    invoke-virtual {v15, v11, v12}, Lse;->a(ILsc;)V

    .line 1177
    invoke-virtual {v15, v0}, Lse;->a(Lsc;)V

    move v0, v1

    move v4, v5

    move v3, v11

    move-object v2, v12

    move-object v1, v15

    goto/16 :goto_b

    :cond_9
    move-object/from16 v36, p2

    move v14, v2

    move-object/from16 v35, v8

    move v4, v9

    move-object v15, v11

    move-object/from16 v12, v16

    const/4 v1, 0x0

    const/16 v2, 0x99

    const/16 v5, 0x19

    move v11, v6

    const/4 v6, 0x1

    move v13, v1

    .line 1179
    :goto_8
    array-length v3, v0

    if-ge v13, v3, :cond_a

    .line 1180
    new-instance v10, Lsc;

    invoke-direct {v10}, Lsc;-><init>()V

    .line 1183
    aget-object v7, v0, v13

    move-object v3, v7

    .line 1185
    iget-object v7, v7, Lsu;->b:Ljava/lang/String;

    invoke-static {v7}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v7

    const/16 v9, 0x9

    .line 1186
    invoke-virtual {v15, v4, v9}, Lse;->b(II)V

    .line 1187
    invoke-virtual {v15, v7, v8}, Lse;->a(J)V

    const/16 v8, 0x94

    .line 1188
    invoke-virtual {v15, v8}, Lse;->a(I)V

    const/16 v7, 0x9a

    .line 1189
    invoke-virtual {v15, v7, v10}, Lse;->a(ILsc;)V

    const/16 v16, 0x0

    move/from16 v7, v16

    const/16 v16, 0x1

    move/from16 v8, v16

    const/16 v16, 0x6

    move/from16 v9, v16

    const/16 v16, 0x4

    move-object/from16 v39, v10

    move/from16 v10, v16

    const/16 v16, 0xc

    move/from16 v22, v13

    move/from16 v13, v16

    const/16 v16, 0xd

    move/from16 v14, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, v21

    move-object/from16 v5, p8

    move-object v6, v15

    move/from16 v11, v18

    move-object/from16 v40, v12

    move-object/from16 v12, v28

    move-object/from16 v41, v15

    move/from16 v15, v22

    move-object/from16 v18, p5

    .line 1191
    invoke-direct/range {v1 .. v18}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v18

    move-object/from16 v12, v40

    move-object/from16 v15, v41

    const/16 v11, 0xa7

    .line 1211
    invoke-virtual {v15, v11, v12}, Lse;->a(ILsc;)V

    move-object/from16 v1, v39

    .line 1213
    invoke-virtual {v15, v1}, Lse;->a(Lsc;)V

    add-int/lit8 v13, v22, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x99

    const/16 v4, 0x16

    const/16 v5, 0x19

    const/4 v6, 0x1

    const/4 v14, 0x6

    goto :goto_8

    .line 1216
    :cond_a
    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    .line 1218
    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v1, p3, v1

    cmp-long v1, v1, v19

    if-nez v1, :cond_b

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 1219
    invoke-virtual {v15, v4, v5}, Lse;->b(II)V

    const/4 v1, 0x4

    const/16 v2, 0x16

    .line 1220
    invoke-virtual {v15, v2, v1}, Lse;->b(II)V

    const/16 v23, 0xb6

    .line 1221
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const/16 v27, 0x0

    const-string v25, "isSupportSmartMatch"

    const-string v26, "(J)Z"

    move-object/from16 v22, v15

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x99

    .line 1222
    invoke-virtual {v15, v1, v6}, Lse;->a(ILsc;)V

    goto :goto_9

    :cond_b
    const/16 v2, 0x16

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 1225
    :goto_9
    invoke-virtual {v15, v4, v5}, Lse;->b(II)V

    const/16 v23, 0xb6

    .line 1226
    sget-object v24, Lrv;->p:Ljava/lang/String;

    const/16 v27, 0x0

    const-string v25, "getNameHashCodeLCase"

    const-string v26, "()J"

    move-object/from16 v22, v15

    invoke-virtual/range {v22 .. v27}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x37

    const/16 v14, 0x9

    .line 1227
    invoke-virtual {v15, v1, v14}, Lse;->b(II)V

    const/4 v1, 0x0

    .line 1229
    :goto_a
    array-length v3, v0

    if-ge v1, v3, :cond_c

    .line 1230
    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    .line 1233
    aget-object v7, v0, v1

    move-object v3, v7

    .line 1235
    iget-object v7, v7, Lsu;->b:Ljava/lang/String;

    invoke-static {v7}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v7

    .line 1236
    invoke-virtual {v15, v2, v14}, Lse;->b(II)V

    .line 1237
    invoke-virtual {v15, v7, v8}, Lse;->a(J)V

    const/16 v10, 0x94

    .line 1238
    invoke-virtual {v15, v10}, Lse;->a(I)V

    const/16 v9, 0x9a

    .line 1239
    invoke-virtual {v15, v9, v13}, Lse;->a(ILsc;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v16, 0x6

    move/from16 v19, v9

    move/from16 v9, v16

    const/16 v16, 0x4

    move/from16 v20, v10

    move/from16 v10, v16

    const/16 v16, 0xc

    move-object/from16 v42, v13

    move/from16 v13, v16

    const/16 v16, 0xd

    move/from16 v22, v14

    move/from16 v14, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v23, v1

    move-object/from16 v1, p0

    move/from16 v24, v2

    move-object/from16 v2, p1

    move/from16 v4, v21

    move-object/from16 v5, p8

    move-object/from16 v43, v6

    move-object v6, v15

    move/from16 v11, v18

    move-object/from16 v44, v12

    move-object/from16 v12, v28

    move-object/from16 v45, v15

    move/from16 v15, v23

    move-object/from16 v18, p5

    .line 1241
    invoke-direct/range {v1 .. v18}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v18

    move-object/from16 v2, v44

    move-object/from16 v1, v45

    const/16 v3, 0xa7

    .line 1261
    invoke-virtual {v1, v3, v2}, Lse;->a(ILsc;)V

    move-object/from16 v4, v42

    .line 1263
    invoke-virtual {v1, v4}, Lse;->a(Lsc;)V

    add-int/lit8 v4, v23, 0x1

    move-object v15, v1

    move-object v12, v2

    move v11, v3

    move v1, v4

    move/from16 v14, v22

    move/from16 v2, v24

    move-object/from16 v6, v43

    const/16 v4, 0x19

    const/4 v5, 0x1

    goto :goto_a

    :cond_c
    move-object v4, v6

    move v3, v11

    move-object v2, v12

    move-object v1, v15

    .line 1265
    invoke-virtual {v1, v4}, Lse;->a(Lsc;)V

    const/4 v0, 0x0

    const/16 v4, 0x19

    .line 1267
    :goto_b
    invoke-virtual {v1, v4, v0}, Lse;->b(II)V

    const/4 v0, 0x1

    .line 1268
    invoke-virtual {v1, v4, v0}, Lse;->b(II)V

    const/4 v5, 0x6

    .line 1269
    invoke-virtual {v1, v4, v5}, Lse;->b(II)V

    const/16 v6, 0xb6

    .line 1270
    sget-object v7, Lrv;->r:Ljava/lang/String;

    sget-object v8, Lxb;->s:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "processExtra"

    move-object/from16 p1, v1

    move/from16 p2, v6

    move-object/from16 p3, v7

    move-object/from16 p4, v10

    move-object/from16 p5, v8

    move/from16 p6, v9

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1271
    invoke-virtual {v1, v3, v2}, Lse;->a(ILsc;)V

    .line 1273
    invoke-virtual {v1, v2}, Lse;->a(Lsc;)V

    const/16 v2, 0x8

    .line 1274
    invoke-virtual {v1, v2, v0}, Lse;->c(II)V

    move-object/from16 v0, v36

    .line 1275
    invoke-virtual {v1, v3, v0}, Lse;->a(ILsc;)V

    move-object/from16 v0, v35

    .line 1277
    invoke-virtual {v1, v0}, Lse;->a(Lsc;)V

    .line 1279
    invoke-virtual {v1, v4, v5}, Lse;->b(II)V

    const/16 v0, 0xb0

    .line 1280
    invoke-virtual {v1, v0}, Lse;->a(I)V

    const/4 v0, 0x5

    const/16 v2, 0xa

    .line 1282
    invoke-virtual {v1, v0, v2}, Lse;->d(II)V

    return-void
.end method

.method private a([Lsu;Ljava/lang/String;ZIILse;Ljava/lang/String;)V
    .locals 3

    .line 842
    sget-object v0, Lrv;->r:Ljava/lang/String;

    if-ne p7, v0, :cond_8

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 p3, 0x0

    .line 846
    :goto_0
    array-length p7, p1

    if-ge p3, p7, :cond_8

    const/16 p7, 0x19

    .line 847
    invoke-virtual {p6, p7, p4}, Lse;->b(II)V

    .line 848
    invoke-virtual {p6, p7, p5}, Lse;->b(II)V

    const/4 p7, 0x3

    if-eqz p3, :cond_7

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p3, v1, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-eq p3, v1, :cond_5

    if-eq p3, p7, :cond_4

    if-eq p3, v0, :cond_3

    if-eq p3, v2, :cond_2

    const/16 p7, 0x80

    if-lt p3, p7, :cond_1

    const/16 p7, 0x11

    .line 870
    invoke-virtual {p6, p7, p3}, Lse;->a(II)V

    goto :goto_1

    :cond_1
    const/16 p7, 0x10

    .line 872
    invoke-virtual {p6, p7, p3}, Lse;->a(II)V

    goto :goto_1

    :cond_2
    const/16 p7, 0x8

    .line 866
    invoke-virtual {p6, p7}, Lse;->a(I)V

    goto :goto_1

    :cond_3
    const/4 p7, 0x7

    .line 863
    invoke-virtual {p6, p7}, Lse;->a(I)V

    goto :goto_1

    :cond_4
    const/4 p7, 0x6

    .line 860
    invoke-virtual {p6, p7}, Lse;->a(I)V

    goto :goto_1

    .line 857
    :cond_5
    invoke-virtual {p6, v2}, Lse;->a(I)V

    goto :goto_1

    .line 854
    :cond_6
    invoke-virtual {p6, v0}, Lse;->a(I)V

    goto :goto_1

    .line 851
    :cond_7
    invoke-virtual {p6, p7}, Lse;->a(I)V

    :goto_1
    const/16 p7, 0x32

    .line 876
    invoke-virtual {p6, p7}, Lse;->a(I)V

    const/16 p7, 0xb5

    .line 877
    invoke-static {p3}, Lru;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lrv;->N:Ljava/lang/String;

    invoke-virtual {p6, p7, p2, v0, v1}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method private a([Lsu;Lry;Ljava/lang/String;)V
    .locals 4

    .line 882
    sget-object v0, Lrv;->r:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_1

    move p3, v1

    .line 883
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_0

    .line 884
    invoke-static {p3}, Lru;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lrv;->N:Ljava/lang/String;

    invoke-virtual {p2, v2, v0, v3}, Lry;->a(ILjava/lang/String;Ljava/lang/String;)Lsa;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    .line 887
    :goto_1
    array-length v0, p1

    if-ge p3, v0, :cond_1

    .line 888
    invoke-static {p3}, Lxb;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lrv;->R:Ljava/lang/String;

    invoke-virtual {p2, v2, v0, v3}, Lry;->a(ILjava/lang/String;Ljava/lang/String;)Lsa;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 892
    :cond_1
    :goto_2
    array-length p3, p1

    if-ge v1, p3, :cond_3

    .line 893
    aget-object p3, p1, v1

    iget-object p3, p3, Lsu;->c:Ljava/lang/Class;

    .line 894
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 895
    invoke-static {v1}, Lxb;->b(I)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lrv;->R:Ljava/lang/String;

    invoke-virtual {p2, v2, p3, v0}, Lry;->a(ILjava/lang/String;Ljava/lang/String;)Lsa;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a([Lsu;Lry;Ljava/lang/String;Lwx;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(J)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lrv;->N:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "getFieldReader"

    const/16 v6, 0x200

    move-object/from16 v7, p2

    invoke-virtual {v7, v4, v5, v3, v6}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v3

    .line 643
    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    .line 644
    array-length v6, v0

    const/16 v9, 0x9a

    const/16 v10, 0x94

    const/16 v12, 0x16

    const/4 v14, 0x6

    if-le v6, v14, :cond_5

    .line 645
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v6, 0x0

    .line 647
    :goto_0
    iget-object v14, v2, Lwx;->O:[J

    array-length v14, v14

    const/16 v15, 0x20

    if-ge v6, v14, :cond_0

    .line 648
    iget-object v14, v2, Lwx;->O:[J

    aget-wide v16, v14, v6

    ushr-long v14, v16, v15

    xor-long v14, v16, v14

    long-to-int v14, v14

    .line 650
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, L-$$Lambda$xb$bvtb9vArX8JRoe-i5bJc2hF9tes;->INSTANCE:L-$$Lambda$xb$bvtb9vArX8JRoe-i5bJc2hF9tes;

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 651
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 653
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 656
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    add-int/lit8 v18, v16, 0x1

    .line 657
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aput v17, v6, v16

    move/from16 v16, v18

    goto :goto_1

    .line 660
    :cond_1
    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    .line 663
    invoke-virtual {v3, v12, v4}, Lse;->b(II)V

    .line 664
    invoke-virtual {v3, v12, v4}, Lse;->b(II)V

    const/16 v14, 0x10

    .line 665
    invoke-virtual {v3, v14, v15}, Lse;->b(II)V

    const/16 v14, 0x7d

    .line 666
    invoke-virtual {v3, v14}, Lse;->a(I)V

    const/16 v14, 0x83

    .line 667
    invoke-virtual {v3, v14}, Lse;->a(I)V

    const/16 v14, 0x88

    .line 668
    invoke-virtual {v3, v14}, Lse;->a(I)V

    const/16 v14, 0x36

    const/4 v15, 0x3

    .line 669
    invoke-virtual {v3, v14, v15}, Lse;->b(II)V

    .line 671
    new-instance v14, Lsc;

    invoke-direct {v14}, Lsc;-><init>()V

    .line 672
    array-length v11, v6

    new-array v11, v11, [Lsc;

    const/4 v7, 0x0

    .line 673
    :goto_2
    array-length v8, v11

    if-ge v7, v8, :cond_2

    .line 674
    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    aput-object v8, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/16 v7, 0x15

    .line 677
    invoke-virtual {v3, v7, v15}, Lse;->b(II)V

    .line 678
    invoke-virtual {v3, v14, v6, v11}, Lse;->a(Lsc;[I[Lsc;)V

    const/4 v7, 0x0

    .line 680
    :goto_3
    array-length v8, v11

    if-ge v7, v8, :cond_4

    .line 681
    aget-object v8, v11, v7

    invoke-virtual {v3, v8}, Lse;->a(Lsc;)V

    .line 683
    aget v8, v6, v7

    .line 684
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 685
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object/from16 p1, v14

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 686
    invoke-virtual {v3, v12, v4}, Lse;->b(II)V

    .line 687
    invoke-virtual {v3, v13, v14}, Lse;->a(J)V

    .line 688
    invoke-virtual {v3, v10}, Lse;->a(I)V

    move-object/from16 v15, p1

    .line 689
    invoke-virtual {v3, v9, v15}, Lse;->a(ILsc;)V

    .line 691
    iget-object v9, v2, Lwx;->O:[J

    invoke-static {v9, v13, v14}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v9

    .line 692
    iget-object v13, v2, Lwx;->P:[S

    aget-short v9, v13, v9

    const/16 v13, 0x19

    const/4 v14, 0x0

    .line 693
    invoke-virtual {v3, v13, v14}, Lse;->b(II)V

    .line 694
    invoke-static {v9}, Lru;->a(I)Ljava/lang/String;

    move-result-object v9

    sget-object v13, Lrv;->N:Ljava/lang/String;

    const/16 v14, 0xb4

    invoke-virtual {v3, v14, v1, v9, v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xa7

    .line 695
    invoke-virtual {v3, v9, v5}, Lse;->a(ILsc;)V

    move-object v14, v15

    const/16 v9, 0x9a

    goto :goto_4

    :cond_3
    move-object v15, v14

    const/16 v9, 0xa7

    .line 698
    invoke-virtual {v3, v9, v15}, Lse;->a(ILsc;)V

    add-int/lit8 v7, v7, 0x1

    const/16 v9, 0x9a

    goto :goto_3

    :cond_4
    move-object v15, v14

    .line 701
    invoke-virtual {v3, v15}, Lse;->a(Lsc;)V

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    .line 703
    :goto_5
    array-length v6, v0

    if-ge v2, v6, :cond_6

    .line 704
    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    .line 705
    aget-object v8, v0, v2

    iget-object v8, v8, Lsu;->b:Ljava/lang/String;

    .line 706
    aget-object v8, v0, v2

    iget-wide v8, v8, Lsu;->n:J

    .line 708
    invoke-virtual {v3, v12, v4}, Lse;->b(II)V

    .line 709
    invoke-virtual {v3, v8, v9}, Lse;->a(J)V

    .line 710
    invoke-virtual {v3, v10}, Lse;->a(I)V

    const/16 v8, 0x9a

    .line 711
    invoke-virtual {v3, v8, v6}, Lse;->a(ILsc;)V

    .line 713
    invoke-virtual {v3, v7}, Lse;->a(Lsc;)V

    const/16 v7, 0x19

    const/4 v9, 0x0

    .line 714
    invoke-virtual {v3, v7, v9}, Lse;->b(II)V

    .line 715
    invoke-static {v2}, Lru;->a(I)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lrv;->N:Ljava/lang/String;

    const/16 v14, 0xb4

    invoke-virtual {v3, v14, v1, v11, v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xa7

    .line 716
    invoke-virtual {v3, v11, v5}, Lse;->a(ILsc;)V

    .line 718
    invoke-virtual {v3, v6}, Lse;->a(Lsc;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 721
    :cond_6
    :goto_6
    invoke-virtual {v3, v4}, Lse;->a(I)V

    const/16 v0, 0xb0

    .line 722
    invoke-virtual {v3, v0}, Lse;->a(I)V

    .line 724
    invoke-virtual {v3, v5}, Lse;->a(Lsc;)V

    .line 725
    invoke-virtual {v3, v0}, Lse;->a(I)V

    const/4 v0, 0x5

    .line 727
    invoke-virtual {v3, v0, v0}, Lse;->d(II)V

    return-void
.end method

.method private b(Lxb$b;Ljava/lang/String;[Lsu;Ljava/lang/String;ZLse;IIIIIILjava/util/Map;Lsc;Lsc;)I
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb$b;",
            "Ljava/lang/String;",
            "[",
            "Lsu;",
            "Ljava/lang/String;",
            "Z",
            "Lse;",
            "IIIIII",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;",
            "Lsc;",
            "Lsc;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v15, p6

    move/from16 v14, p7

    move-object/from16 v13, p13

    move-object/from16 v12, p15

    const-string v1, "RAW_LONG"

    .line 2566
    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 2568
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, p12, 0x2

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p12

    :goto_0
    move-object/from16 v19, v2

    const/16 v11, 0x19

    .line 2572
    invoke-virtual {v15, v11, v14}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 2573
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "getRawLong"

    const-string v5, "()J"

    move-object/from16 v1, p6

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x5c

    .line 2574
    invoke-virtual {v15, v1}, Lse;->a(I)V

    const/16 v1, 0x37

    .line 2575
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15, v1, v2}, Lse;->b(II)V

    const/16 v1, 0x9

    .line 2576
    invoke-virtual {v15, v1}, Lse;->a(I)V

    const/16 v10, 0x94

    .line 2577
    invoke-virtual {v15, v10}, Lse;->a(I)V

    const/16 v9, 0x99

    .line 2578
    invoke-virtual {v15, v9, v12}, Lse;->a(ILsc;)V

    const/4 v8, 0x0

    move/from16 v18, v7

    move v7, v8

    .line 2580
    :goto_1
    array-length v1, v0

    if-ge v7, v1, :cond_4

    .line 2581
    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    .line 2582
    aget-object v5, v0, v7

    .line 2583
    iget-object v1, v5, Lsu;->b:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2584
    array-length v2, v1

    const/16 v3, 0x8

    .line 2585
    new-array v3, v3, [B

    const/4 v4, 0x5

    const/4 v9, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x7

    const/16 v16, 0x22

    if-eq v2, v4, :cond_3

    if-eq v2, v9, :cond_2

    if-ne v2, v10, :cond_1

    aput-byte v16, v3, v8

    .line 2603
    invoke-static {v1, v8, v3, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "nextIfName8Match2"

    goto :goto_2

    .line 2607
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aput-byte v16, v3, v8

    .line 2597
    invoke-static {v1, v8, v3, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v16, v3, v10

    const-string v1, "nextIfName8Match1"

    goto :goto_2

    :cond_3
    aput-byte v16, v3, v8

    .line 2590
    invoke-static {v1, v8, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v16, v3, v9

    const/16 v1, 0x3a

    aput-byte v1, v3, v10

    const-string v1, "nextIfName8Match0"

    :goto_2
    move-object v4, v1

    .line 2609
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v9, Labf;->b:J

    invoke-virtual {v1, v3, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const/16 v3, 0x16

    .line 2610
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v15, v3, v9}, Lse;->b(II)V

    .line 2611
    invoke-virtual {v15, v1, v2}, Lse;->a(J)V

    const/16 v10, 0x94

    .line 2612
    invoke-virtual {v15, v10}, Lse;->a(I)V

    const/16 v1, 0x9a

    .line 2613
    invoke-virtual {v15, v1, v6}, Lse;->a(ILsc;)V

    const/16 v11, 0x19

    .line 2615
    invoke-virtual {v15, v11, v14}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 2616
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v16, "()Z"

    move-object/from16 v1, p6

    move-object/from16 v20, v5

    move-object/from16 v5, v16

    move-object/from16 v22, v6

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v9, 0x99

    .line 2617
    invoke-virtual {v15, v9, v12}, Lse;->a(ILsc;)V

    const/4 v1, 0x0

    move/from16 v21, v7

    move v7, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v20, v8

    move/from16 v8, p7

    move/from16 v23, v9

    move/from16 v9, p9

    move/from16 v24, v10

    move/from16 v10, p8

    move/from16 v25, v11

    move/from16 v11, v18

    move-object/from16 v12, p13

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, v21

    move-object/from16 v18, p2

    .line 2619
    invoke-direct/range {v1 .. v18}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v18

    const/16 v1, 0xa7

    move-object/from16 v2, p6

    move-object/from16 v3, p14

    .line 2639
    invoke-virtual {v2, v1, v3}, Lse;->a(ILsc;)V

    move-object/from16 v1, v22

    .line 2641
    invoke-virtual {v2, v1}, Lse;->a(Lsc;)V

    add-int/lit8 v7, v21, 0x1

    move/from16 v14, p7

    move-object/from16 v13, p13

    move-object/from16 v12, p15

    move-object v15, v2

    move/from16 v8, v20

    move/from16 v9, v23

    move/from16 v10, v24

    move/from16 v11, v25

    goto/16 :goto_1

    :cond_4
    return v18
.end method

.method static b(I)Ljava/lang/String;
    .locals 4

    .line 127
    sget-object v0, Lxb;->x:[Ljava/lang/String;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    return-object v0

    .line 134
    :cond_0
    invoke-static {p0}, Labe;->a(I)I

    move-result v0

    const/16 v1, 0xa

    add-int/2addr v0, v1

    .line 135
    new-array v0, v0, [C

    const/4 v2, 0x0

    const-string v3, "itemReader"

    .line 136
    invoke-virtual {v3, v2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 137
    array-length v1, v0

    invoke-static {p0, v1, v0}, Labe;->a(II[C)V

    .line 138
    sget-object v1, Lxb;->x:[Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    aput-object v2, v1, p0

    return-object v2
.end method

.method private static synthetic b(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 1080
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private b(Lxb$b;Ljava/lang/reflect/Constructor;JLjava/lang/String;[Lsu;Lry;Ljava/lang/String;Lwx;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxb$b;",
            "Ljava/lang/reflect/Constructor;",
            "J",
            "Ljava/lang/String;",
            "[",
            "Lsu;",
            "Lry;",
            "Ljava/lang/String;",
            "Lwx;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 1295
    sget-object v1, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v1, p3, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1297
    :goto_0
    sget-object v4, Lxb;->m:Ljava/lang/String;

    const/16 v5, 0x200

    const-string v6, "readArrayMappingJSONBObject"

    move-object/from16 v7, p7

    invoke-virtual {v7, v3, v6, v4, v5}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v15

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/16 v14, 0xa

    move-object/from16 v7, p0

    move-object/from16 v8, p8

    move-object v9, v15

    .line 1313
    invoke-direct/range {v7 .. v14}, Lxb;->a(Ljava/lang/String;Lse;IIIII)V

    const/16 v13, 0xb

    .line 1316
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1319
    new-instance v4, Lsc;

    invoke-direct {v4}, Lsc;-><init>()V

    const/16 v14, 0x19

    .line 1320
    invoke-virtual {v15, v14, v3}, Lse;->b(II)V

    const/16 v8, 0xb6

    .line 1321
    sget-object v9, Lrv;->p:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "nextIfNull"

    const-string v11, "()Z"

    move-object v7, v15

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x99

    .line 1322
    invoke-virtual {v15, v5, v4}, Lse;->a(ILsc;)V

    .line 1323
    invoke-virtual {v15, v3}, Lse;->a(I)V

    const/16 v12, 0xb0

    .line 1324
    invoke-virtual {v15, v12}, Lse;->a(I)V

    .line 1325
    invoke-virtual {v15, v4}, Lse;->a(Lsc;)V

    const/4 v9, 0x4

    move-object/from16 v4, p9

    .line 1328
    iget-object v11, v4, Lwx;->Z:Ljava/util/function/Supplier;

    move-object/from16 v4, p0

    move-object v5, v15

    move-object/from16 v6, p1

    move-object/from16 v7, p8

    move-object/from16 v8, p5

    move v10, v1

    move-object/from16 v16, v11

    move-object/from16 v11, p2

    move-object/from16 v12, v16

    invoke-direct/range {v4 .. v12}, Lxb;->a(Lse;Lxb$b;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/reflect/Constructor;Ljava/util/function/Supplier;)V

    const/16 v4, 0x3a

    const/4 v5, 0x6

    .line 1329
    invoke-virtual {v15, v4, v5}, Lse;->b(II)V

    .line 1331
    new-instance v4, Lsc;

    invoke-direct {v4}, Lsc;-><init>()V

    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    .line 1333
    invoke-virtual {v15, v14, v3}, Lse;->b(II)V

    const/16 v8, 0xb6

    .line 1334
    sget-object v9, Lrv;->p:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "startArray"

    const-string v11, "()I"

    move-object v7, v15

    invoke-virtual/range {v7 .. v12}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x59

    .line 1335
    invoke-virtual {v15, v7}, Lse;->a(I)V

    const/16 v7, 0x36

    const/4 v9, 0x7

    .line 1336
    invoke-virtual {v15, v7, v9}, Lse;->b(II)V

    .line 1337
    array-length v7, v0

    invoke-virtual {v15, v7}, Lse;->b(I)V

    const/16 v7, 0xa0

    .line 1338
    invoke-virtual {v15, v7, v6}, Lse;->a(ILsc;)V

    move/from16 v18, v13

    const/4 v8, 0x0

    .line 1340
    :goto_1
    array-length v7, v0

    if-ge v8, v7, :cond_1

    .line 1341
    aget-object v7, v0, v8

    move-object v13, v6

    move-object v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x6

    const/4 v7, 0x4

    move-object v3, v13

    move v13, v7

    const/16 v16, 0x8

    const/16 v17, 0x9

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v7, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v2, v7

    move v7, v1

    move/from16 v23, v8

    move-object/from16 v8, p8

    move-object v9, v15

    move/from16 v14, v18

    move-object/from16 v24, v15

    move-object/from16 v15, v22

    move/from16 v18, v23

    move-object/from16 v21, p5

    .line 1342
    invoke-direct/range {v4 .. v21}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v18

    add-int/lit8 v8, v23, 0x1

    move-object v4, v2

    move-object v6, v3

    move-object/from16 v15, v24

    const/4 v3, 0x1

    const/4 v5, 0x6

    const/4 v9, 0x7

    const/16 v14, 0x19

    goto :goto_1

    :cond_1
    move-object v2, v4

    move-object v3, v6

    move-object/from16 v24, v15

    const/16 v0, 0xa7

    move-object/from16 v1, v24

    .line 1362
    invoke-virtual {v1, v0, v2}, Lse;->a(ILsc;)V

    .line 1364
    invoke-virtual {v1, v3}, Lse;->a(Lsc;)V

    const/4 v0, 0x0

    const/16 v3, 0x19

    .line 1365
    invoke-virtual {v1, v3, v0}, Lse;->b(II)V

    const/4 v0, 0x1

    .line 1366
    invoke-virtual {v1, v3, v0}, Lse;->b(II)V

    const/4 v0, 0x6

    .line 1367
    invoke-virtual {v1, v3, v0}, Lse;->b(II)V

    const/16 v4, 0x15

    const/4 v5, 0x7

    .line 1368
    invoke-virtual {v1, v4, v5}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1369
    sget-object v5, Lrv;->r:Ljava/lang/String;

    sget-object v6, Lxb;->u:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "readArrayMappingJSONBObject0"

    move-object/from16 p1, v1

    move/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v8

    move-object/from16 p5, v6

    move/from16 p6, v7

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1370
    invoke-virtual {v1, v2}, Lse;->a(Lsc;)V

    .line 1372
    invoke-virtual {v1, v3, v0}, Lse;->b(II)V

    const/16 v0, 0xb0

    .line 1373
    invoke-virtual {v1, v0}, Lse;->a(I)V

    const/4 v0, 0x5

    const/16 v2, 0xa

    .line 1375
    invoke-virtual {v1, v0, v2}, Lse;->d(II)V

    return-void
.end method

.method private b([Lsu;Lry;Ljava/lang/String;Lwx;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(J)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lrv;->N:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "getFieldReaderLCase"

    const/16 v6, 0x200

    move-object/from16 v7, p2

    invoke-virtual {v7, v4, v5, v3, v6}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v3

    .line 746
    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    .line 747
    array-length v6, v0

    const/16 v9, 0x9a

    const/16 v10, 0x94

    const/16 v12, 0x16

    const/4 v14, 0x6

    if-le v6, v14, :cond_5

    .line 748
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v6, 0x0

    .line 750
    :goto_0
    iget-object v14, v2, Lwx;->Q:[J

    array-length v14, v14

    const/16 v15, 0x20

    if-ge v6, v14, :cond_0

    .line 751
    iget-object v14, v2, Lwx;->Q:[J

    aget-wide v16, v14, v6

    ushr-long v14, v16, v15

    xor-long v14, v16, v14

    long-to-int v14, v14

    .line 753
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, L-$$Lambda$xb$bHU2omR9k04c959ueKpWGiWE7cA;->INSTANCE:L-$$Lambda$xb$bHU2omR9k04c959ueKpWGiWE7cA;

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 754
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 756
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 759
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    add-int/lit8 v18, v16, 0x1

    .line 760
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aput v17, v6, v16

    move/from16 v16, v18

    goto :goto_1

    .line 763
    :cond_1
    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    .line 766
    invoke-virtual {v3, v12, v4}, Lse;->b(II)V

    .line 767
    invoke-virtual {v3, v12, v4}, Lse;->b(II)V

    const/16 v14, 0x10

    .line 768
    invoke-virtual {v3, v14, v15}, Lse;->b(II)V

    const/16 v14, 0x7d

    .line 769
    invoke-virtual {v3, v14}, Lse;->a(I)V

    const/16 v14, 0x83

    .line 770
    invoke-virtual {v3, v14}, Lse;->a(I)V

    const/16 v14, 0x88

    .line 771
    invoke-virtual {v3, v14}, Lse;->a(I)V

    const/16 v14, 0x36

    const/4 v15, 0x3

    .line 772
    invoke-virtual {v3, v14, v15}, Lse;->b(II)V

    .line 774
    new-instance v14, Lsc;

    invoke-direct {v14}, Lsc;-><init>()V

    .line 775
    array-length v11, v6

    new-array v11, v11, [Lsc;

    const/4 v7, 0x0

    .line 776
    :goto_2
    array-length v8, v11

    if-ge v7, v8, :cond_2

    .line 777
    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    aput-object v8, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/16 v7, 0x15

    .line 780
    invoke-virtual {v3, v7, v15}, Lse;->b(II)V

    .line 781
    invoke-virtual {v3, v14, v6, v11}, Lse;->a(Lsc;[I[Lsc;)V

    const/4 v7, 0x0

    .line 783
    :goto_3
    array-length v8, v11

    if-ge v7, v8, :cond_4

    .line 784
    aget-object v8, v11, v7

    invoke-virtual {v3, v8}, Lse;->a(Lsc;)V

    .line 786
    aget v8, v6, v7

    .line 787
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 788
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object/from16 p1, v14

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 789
    invoke-virtual {v3, v12, v4}, Lse;->b(II)V

    .line 790
    invoke-virtual {v3, v13, v14}, Lse;->a(J)V

    .line 791
    invoke-virtual {v3, v10}, Lse;->a(I)V

    move-object/from16 v15, p1

    .line 792
    invoke-virtual {v3, v9, v15}, Lse;->a(ILsc;)V

    .line 794
    iget-object v9, v2, Lwx;->Q:[J

    invoke-static {v9, v13, v14}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v9

    .line 795
    iget-object v13, v2, Lwx;->R:[S

    aget-short v9, v13, v9

    const/16 v13, 0x19

    const/4 v14, 0x0

    .line 796
    invoke-virtual {v3, v13, v14}, Lse;->b(II)V

    .line 797
    invoke-static {v9}, Lru;->a(I)Ljava/lang/String;

    move-result-object v9

    sget-object v13, Lrv;->N:Ljava/lang/String;

    const/16 v14, 0xb4

    invoke-virtual {v3, v14, v1, v9, v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xa7

    .line 798
    invoke-virtual {v3, v9, v5}, Lse;->a(ILsc;)V

    move-object v14, v15

    const/16 v9, 0x9a

    goto :goto_4

    :cond_3
    move-object v15, v14

    const/16 v9, 0xa7

    .line 801
    invoke-virtual {v3, v9, v15}, Lse;->a(ILsc;)V

    add-int/lit8 v7, v7, 0x1

    const/16 v9, 0x9a

    goto :goto_3

    :cond_4
    move-object v15, v14

    .line 804
    invoke-virtual {v3, v15}, Lse;->a(Lsc;)V

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    .line 806
    :goto_5
    array-length v6, v0

    if-ge v2, v6, :cond_6

    .line 807
    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    .line 808
    aget-object v8, v0, v2

    iget-object v8, v8, Lsu;->b:Ljava/lang/String;

    .line 809
    aget-object v8, v0, v2

    iget-wide v8, v8, Lsu;->o:J

    .line 811
    invoke-virtual {v3, v12, v4}, Lse;->b(II)V

    .line 812
    invoke-virtual {v3, v8, v9}, Lse;->a(J)V

    .line 813
    invoke-virtual {v3, v10}, Lse;->a(I)V

    const/16 v8, 0x9a

    .line 814
    invoke-virtual {v3, v8, v6}, Lse;->a(ILsc;)V

    .line 816
    invoke-virtual {v3, v7}, Lse;->a(Lsc;)V

    const/16 v7, 0x19

    const/4 v9, 0x0

    .line 817
    invoke-virtual {v3, v7, v9}, Lse;->b(II)V

    .line 818
    invoke-static {v2}, Lru;->a(I)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lrv;->N:Ljava/lang/String;

    const/16 v14, 0xb4

    invoke-virtual {v3, v14, v1, v11, v13}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xa7

    .line 819
    invoke-virtual {v3, v11, v5}, Lse;->a(ILsc;)V

    .line 821
    invoke-virtual {v3, v6}, Lse;->a(Lsc;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 824
    :cond_6
    :goto_6
    invoke-virtual {v3, v4}, Lse;->a(I)V

    const/16 v0, 0xb0

    .line 825
    invoke-virtual {v3, v0}, Lse;->a(I)V

    .line 827
    invoke-virtual {v3, v5}, Lse;->a(Lsc;)V

    .line 828
    invoke-virtual {v3, v0}, Lse;->a(I)V

    const/4 v0, 0x5

    .line 830
    invoke-virtual {v3, v0, v0}, Lse;->d(II)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 753
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private c(Lxb$b;Ljava/lang/reflect/Constructor;JLjava/lang/String;[Lsu;Lry;Ljava/lang/String;Lwx;)V
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxb$b;",
            "Ljava/lang/reflect/Constructor;",
            "J",
            "Ljava/lang/String;",
            "[",
            "Lsu;",
            "Lry;",
            "Ljava/lang/String;",
            "Lwx;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p6

    move-object/from16 v14, p9

    .line 1419
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v0, p3, v0

    const-wide/16 v16, 0x0

    cmp-long v0, v0, v16

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    move/from16 v36, v12

    goto :goto_0

    :cond_0
    move/from16 v36, v13

    .line 1421
    :goto_0
    sget-object v0, Lxb;->m:Ljava/lang/String;

    const/16 v1, 0x800

    const-string v2, "readObject"

    move-object/from16 v3, p7

    invoke-virtual {v3, v12, v2, v0, v1}, Lry;->a(ILjava/lang/String;Ljava/lang/String;I)Lse;

    move-result-object v11

    .line 1441
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 1443
    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    const/16 v10, 0x19

    .line 1444
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    .line 1445
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    const/16 v2, 0xb4

    .line 1446
    sget-object v3, Lrv;->p:Ljava/lang/String;

    const-string v4, "jsonb"

    const-string v5, "Z"

    invoke-virtual {v11, v2, v3, v4, v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x99

    .line 1447
    invoke-virtual {v11, v9, v1}, Lse;->a(ILsc;)V

    .line 1449
    invoke-virtual {v11, v10, v13}, Lse;->b(II)V

    .line 1450
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    const/4 v2, 0x2

    .line 1451
    invoke-virtual {v11, v10, v2}, Lse;->b(II)V

    const/4 v2, 0x3

    .line 1452
    invoke-virtual {v11, v10, v2}, Lse;->b(II)V

    const/4 v2, 0x4

    const/16 v8, 0x16

    .line 1453
    invoke-virtual {v11, v8, v2}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1454
    sget-object v7, Lxb;->m:Ljava/lang/String;

    const/16 v18, 0x0

    const-string v6, "readJSONBObject"

    move-object v3, v11

    move-object/from16 v5, p8

    move v13, v8

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0xb0

    .line 1455
    invoke-virtual {v11, v8}, Lse;->a(I)V

    .line 1457
    invoke-virtual {v11, v1}, Lse;->a(Lsc;)V

    .line 1460
    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    .line 1461
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    .line 1462
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const-string v6, "isArray"

    const-string v19, "()Z"

    move-object v0, v7

    move-object/from16 v7, v19

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1463
    invoke-virtual {v11, v9, v1}, Lse;->a(ILsc;)V

    .line 1465
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v3, p3, v3

    cmp-long v3, v3, v16

    if-nez v3, :cond_1

    .line 1466
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    .line 1467
    invoke-virtual {v11, v13, v2}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1468
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "isSupportBeanArray"

    const-string v7, "(J)Z"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1469
    invoke-virtual {v11, v9, v0}, Lse;->a(ILsc;)V

    .line 1472
    :cond_1
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1473
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "nextIfArrayStart"

    const-string v7, "()Z"

    move-object v3, v11

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x4

    .line 1475
    iget-object v8, v14, Lwx;->Z:Ljava/util/function/Supplier;

    move-object v7, v1

    move-object/from16 v1, p0

    move v5, v2

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    move v13, v5

    move-object/from16 v5, p5

    move-object/from16 v39, v7

    move/from16 v7, v36

    move-object/from16 v18, v8

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lxb;->a(Lse;Lxb$b;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/reflect/Constructor;Ljava/util/function/Supplier;)V

    const/16 v9, 0x3a

    const/4 v2, 0x6

    .line 1476
    invoke-virtual {v11, v9, v2}, Lse;->b(II)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v28, 0xe

    .line 1479
    :goto_1
    array-length v3, v15

    if-ge v1, v3, :cond_3

    .line 1480
    aget-object v3, v15, v1

    .line 1482
    iget-object v4, v3, Lsu;->b:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v4, v4

    if-nez v1, :cond_2

    move v7, v4

    move v8, v7

    goto :goto_2

    .line 1487
    :cond_2
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1488
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v7, v4

    move v8, v5

    :goto_2
    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x6

    const/16 v27, 0x4

    const/16 v30, 0xb

    const/16 v31, 0xc

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v3

    move/from16 v21, v36

    move-object/from16 v22, p8

    move-object/from16 v23, v11

    move-object/from16 v29, v37

    move/from16 v32, v1

    move-object/from16 v35, p5

    .line 1491
    invoke-direct/range {v18 .. v35}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v28

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1512
    :cond_3
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1513
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "nextIfArrayEnd"

    const-string v18, "()Z"

    move-object v3, v11

    move/from16 v40, v7

    move-object/from16 v7, v18

    move/from16 v41, v8

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x57

    .line 1514
    invoke-virtual {v11, v1}, Lse;->a(I)V

    .line 1516
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    .line 1517
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "nextIfComma"

    const-string v7, "()Z"

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1518
    invoke-virtual {v11, v1}, Lse;->a(I)V

    .line 1520
    invoke-virtual {v11, v10, v2}, Lse;->b(II)V

    const/16 v1, 0xb0

    .line 1521
    invoke-virtual {v11, v1}, Lse;->a(I)V

    .line 1523
    invoke-virtual {v11, v0}, Lse;->a(Lsc;)V

    const/4 v0, 0x0

    .line 1524
    invoke-virtual {v11, v10, v0}, Lse;->b(II)V

    .line 1525
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    const/4 v3, 0x2

    .line 1526
    invoke-virtual {v11, v10, v3}, Lse;->b(II)V

    const/4 v3, 0x3

    .line 1527
    invoke-virtual {v11, v10, v3}, Lse;->b(II)V

    const/16 v8, 0x16

    .line 1528
    invoke-virtual {v11, v8, v13}, Lse;->b(II)V

    .line 1529
    sget-object v7, Lxb;->m:Ljava/lang/String;

    const/16 v18, 0x0

    const-string v6, "processObjectInputSingleItemArray"

    move-object v3, v11

    move-object/from16 v5, p8

    move/from16 v19, v8

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1530
    invoke-virtual {v11, v1}, Lse;->a(I)V

    move-object/from16 v3, v39

    .line 1532
    invoke-virtual {v11, v3}, Lse;->a(Lsc;)V

    .line 1534
    new-instance v8, Lsc;

    invoke-direct {v8}, Lsc;-><init>()V

    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    .line 1536
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    .line 1537
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const-string v6, "nextIfObjectStart"

    const-string v20, "()Z"

    move-object v3, v11

    move-object/from16 v42, v7

    move-object/from16 v7, v20

    move-object v0, v8

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0x9a

    .line 1538
    invoke-virtual {v11, v8, v0}, Lse;->a(ILsc;)V

    .line 1540
    invoke-virtual {v11, v10, v12}, Lse;->b(II)V

    .line 1541
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const-string v6, "nextIfNullOrEmptyString"

    const-string v7, "()Z"

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0x99

    .line 1542
    invoke-virtual {v11, v8, v0}, Lse;->a(ILsc;)V

    .line 1544
    invoke-virtual {v11, v12}, Lse;->a(I)V

    .line 1545
    invoke-virtual {v11, v9, v2}, Lse;->b(II)V

    const/16 v7, 0xa7

    move-object/from16 v6, v42

    .line 1546
    invoke-virtual {v11, v7, v6}, Lse;->a(ILsc;)V

    .line 1548
    invoke-virtual {v11, v0}, Lse;->a(Lsc;)V

    const/4 v0, 0x4

    .line 1550
    iget-object v5, v14, Lwx;->Z:Ljava/util/function/Supplier;

    move v4, v1

    move-object/from16 v1, p0

    move v3, v2

    move-object v2, v11

    move v10, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    move-object/from16 v18, v5

    move-object/from16 v5, p5

    move-object/from16 v43, v6

    move v6, v0

    move v0, v7

    move/from16 v7, v36

    move-object/from16 v8, p2

    move v12, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lxb;->a(Lse;Lxb$b;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/reflect/Constructor;Ljava/util/function/Supplier;)V

    .line 1551
    invoke-virtual {v11, v12, v10}, Lse;->b(II)V

    .line 1554
    new-instance v9, Lsc;

    invoke-direct {v9}, Lsc;-><init>()V

    new-instance v2, Lsc;

    invoke-direct {v2}, Lsc;-><init>()V

    new-instance v1, Lsc;

    invoke-direct {v1}, Lsc;-><init>()V

    const/4 v3, 0x3

    .line 1556
    invoke-virtual {v11, v3}, Lse;->a(I)V

    const/16 v3, 0x36

    const/4 v8, 0x7

    .line 1557
    invoke-virtual {v11, v3, v8}, Lse;->b(II)V

    .line 1558
    invoke-virtual {v11, v9}, Lse;->a(Lsc;)V

    .line 1560
    new-instance v7, Lsc;

    invoke-direct {v7}, Lsc;-><init>()V

    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 1562
    invoke-virtual {v11, v4, v5}, Lse;->b(II)V

    const/16 v18, 0xb6

    .line 1563
    sget-object v20, Lrv;->p:Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "nextIfObjectEnd"

    const-string v23, "()Z"

    move-object v3, v11

    move/from16 v24, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move-object/from16 v5, v20

    move-object/from16 v44, v6

    move-object/from16 v6, v22

    move-object/from16 p2, v7

    move-object/from16 v7, v23

    move v10, v8

    move/from16 v8, v21

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0x9a

    .line 1564
    invoke-virtual {v11, v8, v2}, Lse;->a(ILsc;)V

    const/4 v3, 0x5

    move/from16 v4, v41

    if-lt v4, v3, :cond_5

    move/from16 v7, v40

    if-gt v7, v10, :cond_4

    const/4 v7, 0x1

    const/16 v21, 0x4

    const/16 v22, 0x6

    const/16 v23, 0xb

    const/16 v25, 0xc

    move v6, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object v5, v1

    move-object/from16 v1, p1

    move-object v4, v2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v45, v4

    move-object/from16 v4, p8

    move-object/from16 p7, v5

    move/from16 v5, v36

    move-object v6, v11

    move/from16 v8, v21

    move-object/from16 v46, v9

    move/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v38, v11

    move/from16 v11, v25

    move/from16 v12, v28

    move-object/from16 v13, v37

    move-object/from16 v14, p7

    move-object/from16 v15, p2

    .line 1567
    invoke-direct/range {v0 .. v15}, Lxb;->b(Lxb$b;Ljava/lang/String;[Lsu;Ljava/lang/String;ZLse;IIIIIILjava/util/Map;Lsc;Lsc;)I

    move-result v28

    goto :goto_4

    :cond_4
    move-object/from16 p7, v1

    move-object/from16 v45, v2

    move-object/from16 v46, v9

    move-object/from16 v38, v11

    goto :goto_3

    :cond_5
    move-object/from16 p7, v1

    move-object/from16 v45, v2

    move-object/from16 v46, v9

    move-object/from16 v38, v11

    move/from16 v7, v40

    :goto_3
    const/4 v0, 0x2

    if-lt v4, v0, :cond_6

    const/16 v0, 0x2b

    if-gt v7, v0, :cond_6

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/16 v10, 0xb

    const/16 v11, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move/from16 v5, v36

    move-object/from16 v6, v38

    move/from16 v12, v28

    move-object/from16 v13, v37

    move-object/from16 v14, p7

    move-object/from16 v15, p2

    .line 1585
    invoke-direct/range {v0 .. v15}, Lxb;->a(Lxb$b;Ljava/lang/String;[Lsu;Ljava/lang/String;ZLse;IIIIIILjava/util/Map;Lsc;Lsc;)I

    move-result v28

    :cond_6
    :goto_4
    move-object/from16 v1, p2

    move-object/from16 v0, v38

    .line 1604
    invoke-virtual {v0, v1}, Lse;->a(Lsc;)V

    const/4 v1, 0x1

    const/16 v2, 0x19

    .line 1606
    invoke-virtual {v0, v2, v1}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1607
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "readFieldNameHashCode"

    const-string v7, "()J"

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0x5c

    .line 1608
    invoke-virtual {v0, v3}, Lse;->a(I)V

    const/16 v3, 0x37

    const/16 v9, 0x8

    .line 1609
    invoke-virtual {v0, v3, v9}, Lse;->b(II)V

    const-wide/16 v3, -0x1

    .line 1610
    invoke-virtual {v0, v3, v4}, Lse;->a(J)V

    const/16 v10, 0x94

    .line 1611
    invoke-virtual {v0, v10}, Lse;->a(I)V

    move-object/from16 v11, v45

    const/16 v12, 0x99

    .line 1612
    invoke-virtual {v0, v12, v11}, Lse;->a(ILsc;)V

    move-object/from16 v3, v44

    .line 1614
    invoke-virtual {v0, v3}, Lse;->a(Lsc;)V

    .line 1616
    new-instance v13, Lsc;

    invoke-direct {v13}, Lsc;-><init>()V

    const/16 v3, 0x15

    const/4 v14, 0x7

    .line 1619
    invoke-virtual {v0, v3, v14}, Lse;->b(II)V

    const/16 v15, 0x9a

    .line 1620
    invoke-virtual {v0, v15, v13}, Lse;->a(ILsc;)V

    const/16 v8, 0x16

    .line 1622
    invoke-virtual {v0, v8, v9}, Lse;->b(II)V

    .line 1623
    sget-wide v3, Lwk;->f:J

    invoke-virtual {v0, v3, v4}, Lse;->a(J)V

    .line 1624
    invoke-virtual {v0, v10}, Lse;->a(I)V

    .line 1625
    invoke-virtual {v0, v15, v13}, Lse;->a(ILsc;)V

    .line 1627
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v3, p3, v3

    cmp-long v3, v3, v16

    if-nez v3, :cond_7

    .line 1628
    invoke-virtual {v0, v2, v1}, Lse;->b(II)V

    const/4 v7, 0x4

    .line 1629
    invoke-virtual {v0, v8, v7}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1630
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/16 v18, 0x0

    const-string v6, "isSupportAutoTypeOrHandler"

    const-string v19, "(J)Z"

    move-object v3, v0

    move v14, v7

    move-object/from16 v7, v19

    move v15, v8

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1631
    invoke-virtual {v0, v12, v13}, Lse;->a(ILsc;)V

    goto :goto_5

    :cond_7
    move v15, v8

    const/4 v14, 0x4

    :goto_5
    const/4 v8, 0x0

    .line 1634
    invoke-virtual {v0, v2, v8}, Lse;->b(II)V

    .line 1635
    invoke-virtual {v0, v2, v1}, Lse;->b(II)V

    .line 1636
    invoke-virtual {v0, v2, v8}, Lse;->b(II)V

    const/16 v3, 0xb4

    const-string v4, "objectClass"

    const-string v5, "Ljava/lang/Class;"

    move-object/from16 v7, p8

    .line 1637
    invoke-virtual {v0, v3, v7, v4, v5}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v0, v15, v14}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1639
    sget-object v5, Lrv;->r:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lcom/alibaba/fastjson2/u;

    invoke-static {v6}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Ljava/lang/Class;J)Ljava/lang/Object;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const-string v6, "auoType"

    move-object v3, v0

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0xb0

    .line 1640
    invoke-virtual {v0, v8}, Lse;->a(I)V

    .line 1642
    invoke-virtual {v0, v13}, Lse;->a(Lsc;)V

    move-object/from16 v13, p6

    .line 1645
    array-length v3, v13

    const/4 v7, 0x6

    if-le v3, v7, :cond_e

    .line 1647
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v4, p9

    const/4 v5, 0x0

    .line 1649
    :goto_6
    iget-object v6, v4, Lwx;->O:[J

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 1650
    iget-object v6, v4, Lwx;->O:[J

    aget-wide v18, v6, v5

    const/16 v6, 0x20

    ushr-long v20, v18, v6

    xor-long v7, v18, v20

    long-to-int v6, v7

    .line 1652
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, L-$$Lambda$xb$kXynyTmBCvtPh2DyAmD4dCfVBTc;->INSTANCE:L-$$Lambda$xb$kXynyTmBCvtPh2DyAmD4dCfVBTc;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1653
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x6

    const/16 v8, 0xb0

    goto :goto_6

    .line 1655
    :cond_8
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1658
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    add-int/lit8 v18, v7, 0x1

    .line 1659
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    move/from16 v7, v18

    goto :goto_7

    .line 1662
    :cond_9
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 1665
    invoke-virtual {v0, v15, v9}, Lse;->b(II)V

    .line 1666
    invoke-virtual {v0, v15, v9}, Lse;->b(II)V

    const/16 v6, 0x10

    const/16 v7, 0x20

    .line 1667
    invoke-virtual {v0, v6, v7}, Lse;->b(II)V

    const/16 v6, 0x7d

    .line 1668
    invoke-virtual {v0, v6}, Lse;->a(I)V

    const/16 v6, 0x83

    .line 1669
    invoke-virtual {v0, v6}, Lse;->a(I)V

    const/16 v6, 0x88

    .line 1670
    invoke-virtual {v0, v6}, Lse;->a(I)V

    const/16 v6, 0x36

    const/16 v7, 0xa

    .line 1671
    invoke-virtual {v0, v6, v7}, Lse;->b(II)V

    .line 1673
    new-instance v6, Lsc;

    invoke-direct {v6}, Lsc;-><init>()V

    .line 1674
    array-length v7, v5

    new-array v7, v7, [Lsc;

    const/4 v8, 0x0

    .line 1675
    :goto_8
    array-length v12, v7

    if-ge v8, v12, :cond_a

    .line 1676
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    aput-object v12, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    const/16 v8, 0x15

    const/16 v12, 0xa

    .line 1679
    invoke-virtual {v0, v8, v12}, Lse;->b(II)V

    .line 1680
    invoke-virtual {v0, v6, v5, v7}, Lse;->a(Lsc;[I[Lsc;)V

    const/4 v8, 0x0

    .line 1682
    :goto_9
    array-length v12, v7

    if-ge v8, v12, :cond_c

    .line 1683
    aget-object v12, v7, v8

    invoke-virtual {v0, v12}, Lse;->a(Lsc;)V

    .line 1685
    aget v12, v5, v8

    .line 1686
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 1687
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1688
    invoke-virtual {v0, v15, v9}, Lse;->b(II)V

    .line 1689
    invoke-virtual {v0, v1, v2}, Lse;->a(J)V

    .line 1690
    invoke-virtual {v0, v10}, Lse;->a(I)V

    const/16 v10, 0x9a

    .line 1691
    invoke-virtual {v0, v10, v6}, Lse;->a(ILsc;)V

    .line 1693
    iget-object v10, v4, Lwx;->O:[J

    invoke-static {v10, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 1694
    iget-object v2, v4, Lwx;->P:[S

    aget-short v1, v2, v1

    move/from16 v32, v1

    .line 1696
    aget-object v20, v13, v1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x6

    const/16 v27, 0x4

    const/16 v30, 0xb

    const/16 v31, 0xc

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move/from16 v21, v36

    move-object/from16 v22, p8

    move-object/from16 v23, v0

    move-object/from16 v29, v37

    move-object/from16 v35, p5

    .line 1698
    invoke-direct/range {v18 .. v35}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v28

    move-object/from16 v1, p7

    const/16 v2, 0xa7

    .line 1717
    invoke-virtual {v0, v2, v1}, Lse;->a(ILsc;)V

    const/4 v1, 0x1

    const/16 v2, 0x19

    const/16 v10, 0x94

    goto :goto_a

    :cond_b
    move-object/from16 v1, p7

    const/16 v2, 0xa7

    .line 1720
    invoke-virtual {v0, v2, v1}, Lse;->a(ILsc;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x1

    const/16 v2, 0x19

    const/16 v10, 0x94

    goto/16 :goto_9

    :cond_c
    move-object/from16 v1, p7

    const/16 v2, 0xa7

    .line 1723
    invoke-virtual {v0, v6}, Lse;->a(Lsc;)V

    .line 1724
    new-instance v3, Lsc;

    invoke-direct {v3}, Lsc;-><init>()V

    .line 1726
    sget-object v4, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v4, p3, v4

    cmp-long v4, v4, v16

    if-nez v4, :cond_d

    const/4 v4, 0x1

    const/16 v5, 0x19

    .line 1727
    invoke-virtual {v0, v5, v4}, Lse;->b(II)V

    .line 1728
    invoke-virtual {v0, v15, v14}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1729
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isSupportSmartMatch"

    const-string v8, "(J)Z"

    move-object/from16 p1, v0

    move/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v4, 0x99

    .line 1730
    invoke-virtual {v0, v4, v3}, Lse;->a(ILsc;)V

    :cond_d
    const/16 v4, 0x19

    const/4 v10, 0x0

    .line 1733
    invoke-virtual {v0, v4, v10}, Lse;->b(II)V

    const/4 v5, 0x1

    .line 1734
    invoke-virtual {v0, v4, v5}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1735
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getNameHashCodeLCase"

    const-string v8, "()J"

    move-object/from16 p1, v0

    move/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v4, 0xb9

    .line 1736
    sget-object v5, Lrv;->q:Ljava/lang/String;

    sget-object v6, Lxb;->n:Ljava/lang/String;

    const/4 v7, 0x1

    const-string v8, "getFieldReaderLCase"

    move/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v8

    move-object/from16 p5, v6

    move/from16 p6, v7

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v4, 0x59

    .line 1737
    invoke-virtual {v0, v4}, Lse;->a(I)V

    const/16 v4, 0xd

    const/16 v5, 0x3a

    .line 1738
    invoke-virtual {v0, v5, v4}, Lse;->b(II)V

    const/16 v4, 0xc6

    .line 1739
    invoke-virtual {v0, v4, v3}, Lse;->a(ILsc;)V

    const/16 v4, 0xd

    const/16 v5, 0x19

    .line 1741
    invoke-virtual {v0, v5, v4}, Lse;->b(II)V

    const/4 v4, 0x1

    .line 1742
    invoke-virtual {v0, v5, v4}, Lse;->b(II)V

    const/4 v7, 0x6

    .line 1743
    invoke-virtual {v0, v5, v7}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1744
    sget-object v5, Lrv;->o:Ljava/lang/String;

    sget-object v6, Lxb;->o:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "readFieldValue"

    move/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v9

    move-object/from16 p5, v6

    move/from16 p6, v8

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1745
    invoke-virtual {v0, v2, v1}, Lse;->a(ILsc;)V

    .line 1747
    invoke-virtual {v0, v3}, Lse;->a(Lsc;)V

    move v2, v10

    move-object/from16 v45, v11

    goto/16 :goto_f

    :cond_e
    move-object/from16 v1, p7

    const/16 v2, 0xa7

    const/4 v10, 0x0

    move v3, v10

    .line 1749
    :goto_b
    array-length v4, v13

    if-ge v3, v4, :cond_f

    .line 1750
    new-instance v4, Lsc;

    invoke-direct {v4}, Lsc;-><init>()V

    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    .line 1753
    aget-object v6, v13, v3

    move-object/from16 v20, v6

    .line 1755
    iget-object v8, v6, Lsu;->b:Ljava/lang/String;

    .line 1756
    iget-wide v7, v6, Lsu;->n:J

    .line 1758
    invoke-virtual {v0, v15, v9}, Lse;->b(II)V

    .line 1759
    invoke-virtual {v0, v7, v8}, Lse;->a(J)V

    const/16 v6, 0x94

    .line 1760
    invoke-virtual {v0, v6}, Lse;->a(I)V

    const/16 v6, 0x9a

    .line 1761
    invoke-virtual {v0, v6, v4}, Lse;->a(ILsc;)V

    .line 1763
    invoke-virtual {v0, v5}, Lse;->a(Lsc;)V

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x6

    const/16 v27, 0x4

    const/16 v30, 0xb

    const/16 v31, 0xc

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move/from16 v21, v36

    move-object/from16 v22, p8

    move-object/from16 v23, v0

    move-object/from16 v29, v37

    move/from16 v32, v3

    move-object/from16 v35, p5

    .line 1764
    invoke-direct/range {v18 .. v35}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v28

    .line 1784
    invoke-virtual {v0, v2, v1}, Lse;->a(ILsc;)V

    .line 1786
    invoke-virtual {v0, v4}, Lse;->a(Lsc;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x6

    goto :goto_b

    .line 1789
    :cond_f
    new-instance v12, Lsc;

    invoke-direct {v12}, Lsc;-><init>()V

    .line 1791
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v3, p3, v3

    cmp-long v3, v3, v16

    if-nez v3, :cond_10

    const/4 v3, 0x1

    const/16 v4, 0x19

    .line 1792
    invoke-virtual {v0, v4, v3}, Lse;->b(II)V

    .line 1793
    invoke-virtual {v0, v15, v14}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1794
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "isSupportSmartMatch"

    const-string v7, "(J)Z"

    move-object v3, v0

    const/4 v14, 0x6

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0x99

    .line 1795
    invoke-virtual {v0, v3, v12}, Lse;->a(ILsc;)V

    goto :goto_c

    :cond_10
    const/4 v14, 0x6

    :goto_c
    const/4 v3, 0x1

    const/16 v4, 0x19

    .line 1798
    invoke-virtual {v0, v4, v3}, Lse;->b(II)V

    const/16 v4, 0xb6

    .line 1799
    sget-object v5, Lrv;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "getNameHashCodeLCase"

    const-string v7, "()J"

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0x37

    .line 1800
    invoke-virtual {v0, v3, v9}, Lse;->b(II)V

    move v3, v10

    .line 1802
    :goto_d
    array-length v4, v13

    if-ge v3, v4, :cond_12

    .line 1803
    new-instance v4, Lsc;

    invoke-direct {v4}, Lsc;-><init>()V

    new-instance v5, Lsc;

    invoke-direct {v5}, Lsc;-><init>()V

    .line 1806
    aget-object v6, v13, v3

    .line 1808
    iget-object v7, v6, Lsu;->b:Ljava/lang/String;

    .line 1809
    iget-wide v7, v6, Lsu;->n:J

    move-object/from16 v45, v11

    .line 1810
    iget-wide v10, v6, Lsu;->o:J

    .line 1812
    invoke-virtual {v0, v15, v9}, Lse;->b(II)V

    .line 1813
    invoke-virtual {v0, v7, v8}, Lse;->a(J)V

    const/16 v14, 0x94

    .line 1814
    invoke-virtual {v0, v14}, Lse;->a(I)V

    const/16 v2, 0x99

    .line 1815
    invoke-virtual {v0, v2, v5}, Lse;->a(ILsc;)V

    cmp-long v7, v10, v7

    if-eqz v7, :cond_11

    .line 1818
    invoke-virtual {v0, v15, v9}, Lse;->b(II)V

    .line 1819
    invoke-virtual {v0, v10, v11}, Lse;->a(J)V

    .line 1820
    invoke-virtual {v0, v14}, Lse;->a(I)V

    const/16 v7, 0x9a

    .line 1821
    invoke-virtual {v0, v7, v4}, Lse;->a(ILsc;)V

    goto :goto_e

    :cond_11
    const/16 v7, 0x9a

    const/16 v8, 0xa7

    .line 1823
    invoke-virtual {v0, v8, v4}, Lse;->a(ILsc;)V

    .line 1826
    :goto_e
    invoke-virtual {v0, v5}, Lse;->a(Lsc;)V

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x6

    const/16 v27, 0x4

    const/16 v30, 0xb

    const/16 v31, 0xc

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v6

    move/from16 v21, v36

    move-object/from16 v22, p8

    move-object/from16 v23, v0

    move-object/from16 v29, v37

    move/from16 v32, v3

    move-object/from16 v35, p5

    .line 1827
    invoke-direct/range {v18 .. v35}, Lxb;->a(Lxb$b;Lsu;ZLjava/lang/String;Lse;IIIIILjava/util/Map;IIIZZLjava/lang/String;)I

    move-result v28

    const/16 v5, 0xa7

    .line 1847
    invoke-virtual {v0, v5, v1}, Lse;->a(ILsc;)V

    .line 1849
    invoke-virtual {v0, v4}, Lse;->a(Lsc;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v11, v45

    const/16 v2, 0xa7

    const/4 v10, 0x0

    const/4 v14, 0x6

    goto :goto_d

    :cond_12
    move-object/from16 v45, v11

    .line 1852
    invoke-virtual {v0, v12}, Lse;->a(Lsc;)V

    const/4 v2, 0x0

    :goto_f
    const/16 v3, 0x19

    .line 1854
    invoke-virtual {v0, v3, v2}, Lse;->b(II)V

    const/4 v2, 0x1

    .line 1855
    invoke-virtual {v0, v3, v2}, Lse;->b(II)V

    const/4 v2, 0x6

    .line 1856
    invoke-virtual {v0, v3, v2}, Lse;->b(II)V

    const/16 v2, 0xb6

    .line 1857
    sget-object v3, Lrv;->r:Ljava/lang/String;

    sget-object v4, Lxb;->s:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "processExtra"

    move-object/from16 p1, v0

    move/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v6

    move-object/from16 p5, v4

    move/from16 p6, v5

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0xa7

    .line 1858
    invoke-virtual {v0, v2, v1}, Lse;->a(ILsc;)V

    .line 1860
    invoke-virtual {v0, v1}, Lse;->a(Lsc;)V

    const/4 v1, 0x7

    const/4 v3, 0x1

    .line 1861
    invoke-virtual {v0, v1, v3}, Lse;->c(II)V

    move-object/from16 v1, v46

    .line 1862
    invoke-virtual {v0, v2, v1}, Lse;->a(ILsc;)V

    move-object/from16 v1, v45

    .line 1864
    invoke-virtual {v0, v1}, Lse;->a(Lsc;)V

    move-object/from16 v1, v43

    .line 1866
    invoke-virtual {v0, v1}, Lse;->a(Lsc;)V

    const/16 v1, 0x19

    .line 1868
    invoke-virtual {v0, v1, v3}, Lse;->b(II)V

    const/16 v1, 0xb6

    .line 1869
    sget-object v2, Lrv;->p:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "nextIfComma"

    const-string v5, "()Z"

    move/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v3

    invoke-virtual/range {p1 .. p6}, Lse;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x57

    .line 1870
    invoke-virtual {v0, v1}, Lse;->a(I)V

    const/4 v1, 0x6

    const/16 v2, 0x19

    .line 1872
    invoke-virtual {v0, v2, v1}, Lse;->b(II)V

    const/16 v1, 0xb0

    .line 1873
    invoke-virtual {v0, v1}, Lse;->a(I)V

    const/4 v1, 0x5

    const/16 v2, 0xa

    .line 1875
    invoke-virtual {v0, v1, v2}, Lse;->d(II)V

    return-void
.end method

.method private static synthetic d(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 650
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$bHU2omR9k04c959ueKpWGiWE7cA(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lxb;->c(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$bvtb9vArX8JRoe-i5bJc2hF9tes(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lxb;->d(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$iSA3zUjGBi1OfKfRXukla9523vY(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lxb;->b(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$kXynyTmBCvtPh2DyAmD4dCfVBTc(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lxb;->a(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$rOf_eTzMyOZwM78-FSi4yJSTqVQ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0, p1}, Lxb;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lwk;)Lsu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Lwk;",
            ")",
            "Lsu<",
            "TT;>;"
        }
    .end annotation

    .line 158
    invoke-super/range {p0 .. p14}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lwk;)Lsu;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/Class;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)Lwk;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "J",
            "Laai;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Lsu;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v8, p8

    if-nez p1, :cond_2

    if-eqz p6, :cond_2

    if-nez p7, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 368
    :goto_0
    array-length v2, v8

    if-ge v1, v2, :cond_1

    .line 369
    aget-object v2, v8, v1

    .line 370
    invoke-virtual {v2}, Lsu;->e()Ljava/util/function/BiConsumer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 377
    new-instance v6, Lqe;

    invoke-direct {v6}, Lqe;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    .line 378
    invoke-direct/range {v0 .. v9}, Lxb;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZZILqe;Ljava/util/function/Supplier;[Lsu;Ljava/lang/reflect/Constructor;)Lwz;

    move-result-object v0

    return-object v0

    .line 392
    :cond_2
    invoke-super/range {p0 .. p8}, Lxa;->a(Ljava/lang/Class;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)Lwk;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLzx;)Lwk;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Z",
            "Lzx;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, v11, Lxb;->h:Laba;

    invoke-virtual {v1, v0}, Laba;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v12, v9

    goto :goto_0

    :cond_0
    move v12, v10

    .line 216
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getModifiers()I

    move-result v13

    .line 218
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_b

    .line 222
    :cond_1
    new-instance v14, Lqe;

    invoke-direct {v14}, Lqe;-><init>()V

    .line 223
    invoke-virtual {v8, v14, v0}, Lzx;->a(Lqe;Ljava/lang/Class;)V

    if-nez v12, :cond_2

    .line 224
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 225
    :cond_2
    iget-wide v1, v14, Lqe;->m:J

    const-wide/high16 v3, 0x40000000000000L

    or-long/2addr v1, v3

    iput-wide v1, v14, Lqe;->m:J

    .line 228
    :cond_3
    iget-object v1, v14, Lqe;->w:Ljava/lang/Class;

    if-eqz v1, :cond_4

    const-class v1, Lwk;

    iget-object v2, v14, Lqe;->w:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    :try_start_0
    iget-object v0, v14, Lqe;->w:Ljava/lang/Class;

    new-array v1, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 232
    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 235
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "create deserializer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    if-eqz p3, :cond_6

    .line 239
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static/range {p1 .. p1}, Laax;->g(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v15, v10

    goto :goto_2

    :cond_6
    move/from16 v15, p3

    .line 243
    :goto_2
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v14, Lqe;->k:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-object v1, v14, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v1

    if-ne v1, v9, :cond_8

    .line 244
    :cond_7
    iget-object v1, v14, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v11, v0, v1, v8}, Lxb;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;Lzx;)Lwk;

    move-result-object v0

    return-object v0

    .line 247
    :cond_8
    iget-object v1, v14, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_1c

    iget-object v1, v14, Lqe;->k:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_9

    goto/16 :goto_a

    .line 251
    :cond_9
    iget-object v1, v14, Lqe;->c:Ljava/lang/Class;

    if-eqz v1, :cond_a

    .line 252
    invoke-virtual {v11, v0, v7, v8, v14}, Lxb;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lzx;Lqe;)Lwk;

    move-result-object v0

    return-object v0

    .line 255
    :cond_a
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-static/range {p1 .. p1}, Laax;->h(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_9

    :cond_b
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, p4

    .line 259
    invoke-virtual/range {v1 .. v6}, Lxb;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lqe;ZLzx;)[Lsu;

    move-result-object v6

    if-nez v15, :cond_10

    .line 263
    sget v1, Labf;->d:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_c

    const-class v1, Ljava/lang/StackTraceElement;

    if-ne v0, v1, :cond_c

    .line 265
    :try_start_1
    const-class v1, Ljava/lang/StackTraceElement;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v10

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-string v16, ""

    const-string v17, "classLoaderName"

    const-string v18, "moduleName"

    const-string v19, "moduleVersion"

    const-string v20, "declaringClass"

    const-string v21, "methodName"

    const-string v22, "fileName"

    const-string v23, "lineNumber"

    .line 266
    filled-new-array/range {v16 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lxb;->a(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lwk;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    return-object v0

    .line 271
    :catch_4
    :cond_c
    array-length v1, v6

    move v2, v10

    :goto_3
    if-ge v2, v1, :cond_10

    aget-object v3, v6, v2

    .line 272
    iget-object v4, v3, Lsu;->g:Ljava/lang/reflect/Method;

    .line 273
    invoke-virtual {v3}, Lsu;->c()Z

    move-result v4

    if-nez v4, :cond_f

    .line 274
    invoke-virtual {v3}, Lsu;->b()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    .line 280
    :cond_d
    iget-wide v3, v3, Lsu;->e:J

    const-wide/high16 v16, 0x8000000000000L

    and-long v3, v3, v16

    const-wide/16 v16, 0x0

    cmp-long v3, v3, v16

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    :goto_4
    move v1, v10

    goto :goto_5

    :cond_10
    move v1, v9

    .line 287
    :goto_5
    iget-object v2, v14, Lqe;->C:Ljava/lang/Class;

    if-eqz v2, :cond_11

    move v1, v10

    :cond_11
    if-eqz v1, :cond_15

    .line 292
    array-length v2, v6

    move v3, v10

    :goto_6
    if-ge v3, v2, :cond_15

    aget-object v4, v6, v3

    .line 293
    iget-object v5, v4, Lsu;->j:Ljava/lang/Object;

    if-nez v5, :cond_14

    iget-object v5, v4, Lsu;->l:Laai;

    if-eqz v5, :cond_12

    goto :goto_7

    .line 298
    :cond_12
    iget-object v4, v4, Lsu;->c:Ljava/lang/Class;

    .line 299
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_7

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    :goto_7
    move v1, v10

    :cond_15
    if-eqz v1, :cond_16

    .line 306
    iget-object v2, v14, Lqe;->y:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, v14, Lqe;->y:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    move v1, v10

    :cond_16
    if-nez v1, :cond_17

    .line 311
    invoke-super {v11, v0, v7, v15, v8}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLzx;)Lwk;

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v1, 0x0

    .line 315
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 316
    invoke-static {v0, v9}, Laax;->a(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 320
    :try_start_2
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5

    :catch_5
    move-object/from16 v16, v2

    goto :goto_8

    :cond_18
    move-object/from16 v16, v1

    .line 327
    :goto_8
    iget-object v1, v14, Lqe;->f:[Ljava/lang/Class;

    if-eqz v1, :cond_19

    iget-object v1, v14, Lqe;->f:[Ljava/lang/Class;

    array-length v1, v1

    if-eqz v1, :cond_19

    .line 328
    iget-object v3, v14, Lqe;->a:Ljava/lang/String;

    iget-object v4, v14, Lqe;->f:[Ljava/lang/Class;

    iget-object v5, v14, Lqe;->g:[Ljava/lang/String;

    iget-object v7, v14, Lqe;->h:Ljava/lang/Class;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v9, v6

    move-object v6, v7

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lxb;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lsu;)Lwk;

    move-result-object v0

    return-object v0

    :cond_19
    move-object v9, v6

    if-nez v15, :cond_1a

    if-nez v16, :cond_1a

    .line 340
    invoke-super {v11, v0, v7, v10, v8}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLzx;)Lwk;

    move-result-object v0

    return-object v0

    :cond_1a
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move v5, v12

    move v6, v13

    move-object v7, v14

    move-object/from16 v10, v16

    .line 344
    invoke-direct/range {v1 .. v10}, Lxb;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZZILqe;Ljava/util/function/Supplier;[Lsu;Ljava/lang/reflect/Constructor;)Lwz;

    move-result-object v0

    return-object v0

    .line 256
    :cond_1b
    :goto_9
    invoke-super {v11, v0, v7, v15, v8}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLzx;)Lwk;

    move-result-object v0

    return-object v0

    .line 248
    :cond_1c
    :goto_a
    invoke-virtual {v11, v0, v7, v8, v14}, Lxb;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lzx;Lqe;)Lwk;

    move-result-object v0

    return-object v0

    .line 219
    :cond_1d
    :goto_b
    invoke-super/range {p0 .. p4}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLzx;)Lwk;

    move-result-object v0

    return-object v0
.end method
