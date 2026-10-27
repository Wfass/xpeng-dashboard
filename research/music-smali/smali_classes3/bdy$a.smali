.class Lbdy$a;
.super Ljava/lang/Object;
.source "ReissueModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbdy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lbdy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbdy;-><init>(Lbdy$1;)V

    sput-object v0, Lbdy$a;->a:Lbdy;

    return-void
.end method
