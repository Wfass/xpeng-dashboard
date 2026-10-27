.class public Lcho;
.super Lchq;


# static fields
.field static final a:Z

.field static b:Ljava/lang/Class;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcho;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "cho"

    invoke-static {v0}, Lcho;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcho;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcho;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lchq;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcho;->c:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lchq;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcho;->c:I

    invoke-virtual {p0, p1}, Lcho;->a(I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcho;->c:I

    return v0
.end method

.method public a(Lchr;)Lchr;
    .locals 1

    new-instance v0, Lchp;

    invoke-direct {v0, p1, p0}, Lchp;-><init>(Lchr;Lcho;)V

    return-object v0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcho;->c:I

    return-void

    :cond_0
    new-instance v0, Lcia;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Delta distance must be in the range [1, 256]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcia;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-boolean v0, Lcho;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
