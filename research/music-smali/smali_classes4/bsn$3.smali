.class Lbsn$3;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsn;


# direct methods
.method constructor <init>(Lbsn;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lbsn$3;->a:Lbsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lbsn$3;->a:Lbsn;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbsn;->a(Lbsn;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lbsn$3;->a(Ljava/lang/Throwable;)V

    return-void
.end method
