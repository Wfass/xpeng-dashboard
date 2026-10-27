.class Lbcz$a;
.super Ljava/lang/Object;
.source "NetRadioModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lbcz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbcz;-><init>(Lbcz$1;)V

    sput-object v0, Lbcz$a;->a:Lbcz;

    return-void
.end method
