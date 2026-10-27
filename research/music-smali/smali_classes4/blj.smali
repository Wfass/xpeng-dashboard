.class public Lblj;
.super Ljava/lang/Object;
.source "XOSSmallPlayerUIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lblj$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/musicradio/playercomponent/small/view/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lblj;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lblj;
    .locals 1

    .line 16
    sget-object v0, Lblj$a;->a:Lblj;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/xiaopeng/musicradio/playercomponent/small/view/c;
    .locals 1

    .line 24
    iget-object v0, p0, Lblj;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/small/view/c;

    return-object p1
.end method

.method public a(ILcom/xiaopeng/musicradio/playercomponent/small/view/c;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lblj;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
