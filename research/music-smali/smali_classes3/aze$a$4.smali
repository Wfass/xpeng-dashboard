.class Laze$a$4;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze$a;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/util/SparseArray;

.field final synthetic d:Laze$a;


# direct methods
.method constructor <init>(Laze$a;IILandroid/util/SparseArray;)V
    .locals 0

    .line 253
    iput-object p1, p0, Laze$a$4;->d:Laze$a;

    iput p2, p0, Laze$a$4;->a:I

    iput p3, p0, Laze$a$4;->b:I

    iput-object p4, p0, Laze$a$4;->c:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 256
    iget-object v0, p0, Laze$a$4;->d:Laze$a;

    iget v1, p0, Laze$a$4;->a:I

    iget v2, p0, Laze$a$4;->b:I

    iget-object v3, p0, Laze$a$4;->c:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2, v3}, Laze$a;->a(Laze$a;IILandroid/util/SparseArray;)V

    .line 257
    iget-object v0, p0, Laze$a$4;->d:Laze$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laze$a;->a(Laze$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
