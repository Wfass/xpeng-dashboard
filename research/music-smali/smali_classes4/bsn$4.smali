.class Lbsn$4;
.super Ljava/lang/Object;
.source "VipBuyingDlg.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
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

    .line 152
    iput-object p1, p0, Lbsn$4;->a:Lbsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/ref/SoftReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x43700000    # 240.0f

    .line 155
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lapv;->a(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 152
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbsn$4;->a(Ljava/lang/String;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    return-object p1
.end method
