.class public Lme/yokeyword/fragmentation/b;
.super Ljava/lang/Object;
.source "Fragmentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yokeyword/fragmentation/b$a;
    }
.end annotation


# static fields
.field static volatile a:Lme/yokeyword/fragmentation/b;


# instance fields
.field private b:Z

.field private c:I

.field private d:Lcda;


# direct methods
.method constructor <init>(Lme/yokeyword/fragmentation/b$a;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lme/yokeyword/fragmentation/b;->c:I

    .line 50
    invoke-static {p1}, Lme/yokeyword/fragmentation/b$a;->a(Lme/yokeyword/fragmentation/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lme/yokeyword/fragmentation/b;->b:Z

    .line 51
    iget-boolean v0, p0, Lme/yokeyword/fragmentation/b;->b:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p1}, Lme/yokeyword/fragmentation/b$a;->b(Lme/yokeyword/fragmentation/b$a;)I

    move-result v0

    iput v0, p0, Lme/yokeyword/fragmentation/b;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lme/yokeyword/fragmentation/b;->c:I

    .line 56
    :goto_0
    invoke-static {p1}, Lme/yokeyword/fragmentation/b$a;->c(Lme/yokeyword/fragmentation/b$a;)Lcda;

    move-result-object p1

    iput-object p1, p0, Lme/yokeyword/fragmentation/b;->d:Lcda;

    return-void
.end method

.method public static a()Lme/yokeyword/fragmentation/b;
    .locals 3

    .line 39
    sget-object v0, Lme/yokeyword/fragmentation/b;->a:Lme/yokeyword/fragmentation/b;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lme/yokeyword/fragmentation/b;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lme/yokeyword/fragmentation/b;->a:Lme/yokeyword/fragmentation/b;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lme/yokeyword/fragmentation/b;

    new-instance v2, Lme/yokeyword/fragmentation/b$a;

    invoke-direct {v2}, Lme/yokeyword/fragmentation/b$a;-><init>()V

    invoke-direct {v1, v2}, Lme/yokeyword/fragmentation/b;-><init>(Lme/yokeyword/fragmentation/b$a;)V

    sput-object v1, Lme/yokeyword/fragmentation/b;->a:Lme/yokeyword/fragmentation/b;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lme/yokeyword/fragmentation/b;->a:Lme/yokeyword/fragmentation/b;

    return-object v0
.end method

.method public static d()Lme/yokeyword/fragmentation/b$a;
    .locals 1

    .line 84
    new-instance v0, Lme/yokeyword/fragmentation/b$a;

    invoke-direct {v0}, Lme/yokeyword/fragmentation/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcda;
    .locals 1

    .line 68
    iget-object v0, p0, Lme/yokeyword/fragmentation/b;->d:Lcda;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 76
    iget v0, p0, Lme/yokeyword/fragmentation/b;->c:I

    return v0
.end method
