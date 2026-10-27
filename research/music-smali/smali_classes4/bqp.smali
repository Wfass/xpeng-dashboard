.class public Lbqp;
.super Ljava/lang/Object;
.source "AudioTypeControlModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqp$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lbqn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbqp;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lbqp;
    .locals 1

    .line 17
    sget-object v0, Lbqp$a;->a:Lbqp;

    return-object v0
.end method


# virtual methods
.method public a(ILbqn;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lbqp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 25
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0, p1}, Laqr;->c(I)Laqt;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    .line 21
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    return v0
.end method

.method public b(I)Lbqn;
    .locals 1

    .line 35
    invoke-virtual {p0, p1}, Lbqp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lbqp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbqn;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Lbqn;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lbqp;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lbqp;->b(I)Lbqn;

    move-result-object v0

    return-object v0
.end method
