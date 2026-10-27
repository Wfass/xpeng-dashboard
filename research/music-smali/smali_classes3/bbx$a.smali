.class Lbbx$a;
.super Ljava/lang/Object;
.source "IcmTransferModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbbx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lbbx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbbx;-><init>(Lbbx$1;)V

    sput-object v0, Lbbx$a;->a:Lbbx;

    return-void
.end method
