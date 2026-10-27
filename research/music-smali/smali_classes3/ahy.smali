.class public Lahy;
.super Ljava/lang/Object;
.source "FutureData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0, p2}, Lahy;-><init>(ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;TT;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Lahy;->a:Z

    .line 70
    iput-object p2, p0, Lahy;->b:Ljava/lang/Object;

    .line 71
    iput-object p3, p0, Lahy;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lahy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lahy<",
            "TT;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lahy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lahy;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lahy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lahy<",
            "TT;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lahy;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lahy;-><init>(ZLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lahy;->a:Z

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lahy;->c:Ljava/lang/Object;

    return-object v0
.end method
