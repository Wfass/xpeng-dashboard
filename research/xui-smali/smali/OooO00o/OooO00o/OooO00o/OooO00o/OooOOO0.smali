.class public abstract LOooO00o/OooO00o/OooO00o/OooO00o/OooOOO0;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0o<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field public OooO0Oo:LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O<",
            "TResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0o;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOOO0;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOOO0;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO00o(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
