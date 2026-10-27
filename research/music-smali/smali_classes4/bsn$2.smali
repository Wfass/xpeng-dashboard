.class Lbsn$2;
.super Ljava/lang/Object;
.source "VipBuyingDlg.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsn;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/ref/SoftReference<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsn;


# direct methods
.method constructor <init>(Lbsn;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lbsn$2;->a:Lbsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/SoftReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lbsn$2;->a:Lbsn;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lbsn;->a(Lbsn;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0, p1}, Lbsn$2;->a(Ljava/lang/ref/SoftReference;)V

    return-void
.end method
