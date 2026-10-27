.class public Lazp;
.super Ljava/lang/Object;
.source "MediaConManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazp$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lazo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lazp;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lazp;
    .locals 1

    .line 13
    sget-object v0, Lazp$a;->a:Lazp;

    return-object v0
.end method


# virtual methods
.method public a(I)Lazo;
    .locals 1

    .line 21
    iget-object v0, p0, Lazp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lazo;

    return-object p1
.end method

.method public a(ILazo;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lazp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
