.class Lcom/alibaba/fastjson2/i;
.super Lcom/alibaba/fastjson2/h;
.source "JSONPathCompilerReflectASM.java"


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicLong;

.field static final c:Lcom/alibaba/fastjson2/i;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/lang/String;

.field static final g:Ljava/lang/String;

.field static final h:Ljava/lang/String;

.field static final i:Ljava/lang/String;


# instance fields
.field protected final j:Laba;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/i;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    new-instance v0, Lcom/alibaba/fastjson2/i;

    .line 25
    invoke-static {}, Laba;->b()Laba;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/i;-><init>(Laba;)V

    sput-object v0, Lcom/alibaba/fastjson2/i;->c:Lcom/alibaba/fastjson2/i;

    .line 28
    const-class v0, Lwk;

    invoke-static {v0}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/i;->d:Ljava/lang/String;

    .line 29
    const-class v0, Lsu;

    invoke-static {v0}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/i;->e:Ljava/lang/String;

    .line 30
    const-class v0, Laem;

    invoke-static {v0}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/i;->f:Ljava/lang/String;

    .line 31
    const-class v0, Labq;

    invoke-static {v0}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/i;->g:Ljava/lang/String;

    .line 32
    const-class v0, Lcom/alibaba/fastjson2/h$a;

    invoke-static {v0}, Lrv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/i;->h:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Ljava/lang/String;Ljava/lang/Class;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson2/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson2/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson2/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson2/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/i;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Laba;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/fastjson2/h;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alibaba/fastjson2/i;->j:Laba;

    return-void
.end method
