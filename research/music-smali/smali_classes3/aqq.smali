.class public Laqq;
.super Ljava/lang/Object;
.source "AudioManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqq$a;,
        Laqq$b;,
        Laqq$c;
    }
.end annotation


# instance fields
.field private a:Laqs;

.field private b:Laqq$b;

.field private c:Laqq$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Laqq;->b()V

    return-void
.end method

.method public static a()Laqq;
    .locals 1

    .line 17
    sget-object v0, Laqq$c;->a:Laqq;

    return-object v0
.end method


# virtual methods
.method public a(Laqq$a;)V
    .locals 0

    .line 45
    iput-object p1, p0, Laqq;->c:Laqq$a;

    return-void
.end method

.method public a(Laqq$b;)V
    .locals 0

    .line 37
    iput-object p1, p0, Laqq;->b:Laqq$b;

    return-void
.end method

.method public b()V
    .locals 1

    .line 29
    new-instance v0, Laqp;

    invoke-direct {v0}, Laqp;-><init>()V

    iput-object v0, p0, Laqq;->a:Laqs;

    return-void
.end method

.method public c()Laqs;
    .locals 1

    .line 33
    iget-object v0, p0, Laqq;->a:Laqs;

    return-object v0
.end method

.method public d()Laqq$b;
    .locals 1

    .line 41
    iget-object v0, p0, Laqq;->b:Laqq$b;

    return-object v0
.end method

.method public e()Laqq$a;
    .locals 1

    .line 49
    iget-object v0, p0, Laqq;->c:Laqq$a;

    return-object v0
.end method
